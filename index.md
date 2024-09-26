% DiffSol
% Martin Robinson
% October 2nd 2024

# What is DiffSol?

- Rust library for solving ODEs or semi-explicit DAEs.

$$ M(t) \frac{dy}{dt} = f(t, y, p) $$

- Design goals:
    - High performance for large systems of equations
    - Easy to use and wrap in higher level languages.

# Features

- Two solvers: Variable order **BDF** (e.g. `ode15s`), **SDIRK** (e.g. `ode23s`)
- Adaptive step size control
- Dense output
- Event handling
- Sensitivity analysis (forward only)
- Sparse and Dense Jacobians

# Motivation

1. Difficult to use high performance solvers from **Python or Javascript**
2. **Rust** is a great systems language, but, lacks many native libraries for scientific computing.
    - Linear algebra improving (e.g. `nalgebra`, `faer`).
    - ODE solvers are still in infancy.

# Installation & Docs

- DiffSol is available on [crates.io](https://crates.io/crates/diffsol).
- The source code is available on [github](https://github.com/martinjrobins/diffsol)
- API documentation is available on [docs.rs](https://docs.rs/diffsol)
- User guide and examples are available in the [DiffSol book](https://martinjrobins.github.io/diffsol)

# Usage

See logistic growth example [here](https://martinjrobins.github.io/diffsol/ode_equations.html)

# DiffSL

- Using solvers from **higher level languages** (Python, Julia, R) tricky.
  - Difficult to pass in user defined functions
- DiffSol solves this problem by using a Domain Specific Language (DSL) called **DiffSL**
  - JIT compiled using LLVM at runtime.
  - See the [DiffSL book](https://martinjrobins.github.io/diffsl/)


# DiffSL example

See logistic growth DiffSL example [here](https://martinjrobins.github.io/diffsol/diffsl.html)

# Future work

- Adjoint sensitivity analysis
- [Python bindings](https://github.com/alexallmont/py-diffsol) using PyO3 written by Alex Allmont 
- Javascript bindings using wasm
- More solvers (e.g. Rosenbrock methods, explicit Runge-Kutta methods, stochastic solvers)
