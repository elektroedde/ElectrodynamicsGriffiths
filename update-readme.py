#!/usr/bin/env python3
"""Update README.md based on which problem files contain a #solution block."""

import re
import subprocess
from pathlib import Path

CHAPTERS = [
    (1,  "Vector Analysis",                65),
    (2,  "Electrostatics",                 67),
    (3,  "Special Techniques",             65),
    (4,  "Electric Fields in Matter",      44),
    (5,  "Magnetostatics",                 69),
    (6,  "Magnetic Fields in Matter",      30),
    (7,  "Electrodynamics",                69),
    (8,  "Conservation Laws",              29),
    (9,  "Electromagnetic Waves",          44),
    (10, "Potentials and Fields",          38),
    (11, "Radiation",                      36),
    (12, "Electrodynamics and Relativity", 76),
]

TOTAL_PROBLEMS = sum(n for _, _, n in CHAPTERS)

CHAPTER_NAMES = {
    1:  "Vector Analysis",
    2:  "Electrostatics",
    3:  "Potentials",
    4:  "Electric Fields in Matter",
    5:  "Magnetostatics",
    6:  "Magnetic Fields in Matter",
    7:  "Electrodynamics",
    8:  "Conservation Laws",
    9:  "Electromagnetic Waves",
    10: "Potentials and Fields",
    11: "Radiation",
    12: "Electrodynamics and Relativity",
}

SOLVED_RE = re.compile(r'#solution\[\s*[^\s\]]', re.DOTALL)


def is_solved(path: Path) -> bool:
    try:
        return bool(SOLVED_RE.search(path.read_text()))
    except OSError:
        return False


def make_table(ch_num: int, num_problems: int, solved: set[int]) -> str:
    cells = []
    for p in range(1, num_problems + 1):
        symbol = "✅" if p in solved else "❌"
        cells.append(f"{p} {symbol}")

    rows = []
    for i in range(0, len(cells), 8):
        chunk = cells[i:i + 8]
        while len(chunk) < 8:
            chunk.append("")
        rows.append("<tr>" + "".join(f"<td>{c}</td>" for c in chunk) + "</tr>")

    return "<table>\n" + "\n".join(rows) + "\n</table>"


def build_readme(repo_root: Path) -> str:
    total_solved = 0
    chapter_blocks = []

    for ch_num, title, num_problems in CHAPTERS:
        ch_dir = repo_root / f"ch{ch_num:02d}"
        solved = set()
        for p in range(1, num_problems + 1):
            prob_file = ch_dir / f"p{p:02d}.typ"
            if is_solved(prob_file):
                solved.add(p)
        total_solved += len(solved)

        table = make_table(ch_num, num_problems, solved)
        chapter_blocks.append(
            f"### Chapter {ch_num} — {title} &nbsp;·&nbsp; {num_problems} problems\n\n{table}"
        )

    chapters_section = "\n\n".join(chapter_blocks)

    return f"""\
# Electrodynamics – Griffiths

Solutions to problems from *Introduction to Electrodynamics* (4th Edition) by David J. Griffiths. Each chapters solution is fully contained within the pdf-files for that chapter.

---

## Legend

| Symbol | Meaning |
|--------|---------|
| ✅ | Complete |
| ❌ | Incomplete |
| ⭐ | Complete, styled, and commented |

---

## Progress

**{total_solved} / {TOTAL_PROBLEMS} problems complete ({100*total_solved/TOTAL_PROBLEMS:.0f}%)**

---

{chapters_section}

---

*Template by Claude AI, all PDF produced by Typst*
"""


def find_typst() -> list[str]:
    """Return a command prefix for typst compile, preferring the standalone CLI."""
    for candidate in [["typst"], ["tinymist"]]:
        try:
            subprocess.run(candidate + ["--version"], capture_output=True, check=True)
            return candidate
        except (FileNotFoundError, subprocess.CalledProcessError):
            continue
    # Try the tinymist bundled with the VS Code extension as a last resort.
    import glob as _glob
    pattern = str(Path.home() / ".vscode/extensions/myriad-dreamin.tinymist-*/out/tinymist")
    matches = sorted(_glob.glob(pattern))
    if matches:
        return [matches[-1]]
    return []


def compile_pdfs(root: Path) -> None:
    typ_files = sorted(root.glob("ch*.typ"))
    if not typ_files:
        print("No ch*.typ files found to compile.")
        return

    typst_cmd = find_typst()
    if not typst_cmd:
        print("typst not found — skipping PDF compilation. Install typst or tinymist.")
        return

    for typ_file in typ_files:
        print(f"Compiling {typ_file.name} …", end=" ", flush=True)
        result = subprocess.run(
            typst_cmd + ["compile", str(typ_file)],
            capture_output=True, text=True
        )
        if result.returncode == 0:
            print("ok")
        else:
            print("FAILED")
            if result.stderr:
                print(result.stderr.strip())


def main():
    # The current git working tree (may be a worktree or the main repo).
    current_root = Path(
        subprocess.check_output(["git", "rev-parse", "--show-toplevel"],
                                stderr=subprocess.DEVNULL).decode().strip()
    )
    # Always scan .typ files from the main worktree (first entry in `git worktree list`),
    # because .typ files are gitignored and only exist in the user's primary working copy.
    worktree_list = subprocess.check_output(
        ["git", "worktree", "list", "--porcelain"], stderr=subprocess.DEVNULL
    ).decode()
    main_root = Path(worktree_list.split("\n")[0].removeprefix("worktree ").strip())

    # README lives in the current working tree; .typ sources in the main worktree.
    readme_path = current_root / "README.md"
    new_content = build_readme(main_root)
    readme_path.write_text(new_content)
    print(f"README.md updated ({current_root})")

    compile_pdfs(main_root)


if __name__ == "__main__":
    main()
