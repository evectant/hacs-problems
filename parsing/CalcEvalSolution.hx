module org.crsx.hacs.problems.parsing.CalcEvalSolution {

token INT | [0-9]+;

sort Expr
    | ⟦ ⟨INT⟩ ⟧@2
    | ⟦ ⟨Expr@1⟩ * ⟨Expr@2⟩ ⟧@1
    | ⟦ ⟨Expr@1⟩ / ⟨Expr@2⟩ ⟧@1
    | ⟦ ⟨Expr@0⟩ + ⟨Expr@1⟩ ⟧@0
    | ⟦ ⟨Expr@0⟩ - ⟨Expr@1⟩ ⟧@0;

sort Computed
    | scheme Mul(Computed, Computed);
    Mul(#1, #2) → ⟦ #1 * #2 ⟧;
    | scheme Div(Computed, Computed);
    Div(#1, #2) → ⟦ #1 / #2 ⟧;
    | scheme Add(Computed, Computed);
    Add(#1, #2) → ⟦ #1 + #2 ⟧;
    | scheme Sub(Computed, Computed);
    Sub(#1, #2) → ⟦ #1 - #2 ⟧;

sort Computed | scheme Eval(Expr);
Eval(⟦ ⟨INT#⟩ ⟧) → ⟦ $# ⟧;
Eval(⟦ ⟨Expr#1⟩ * ⟨Expr#2⟩ ⟧) → Mul(Eval(#1), Eval(#2));
Eval(⟦ ⟨Expr#1⟩ / ⟨Expr#2⟩ ⟧) → Div(Eval(#1), Eval(#2));
Eval(⟦ ⟨Expr#1⟩ + ⟨Expr#2⟩ ⟧) → Add(Eval(#1), Eval(#2));
Eval(⟦ ⟨Expr#1⟩ - ⟨Expr#2⟩ ⟧) → Sub(Eval(#1), Eval(#2));

}
