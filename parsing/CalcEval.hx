module org.crsx.hacs.problems.parsing.CalcEval {

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
Eval(#) → ⟦ 0 ⟧;

}
