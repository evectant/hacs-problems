module org.crsx.hacs.problems.parsing.CalcParseSolution {

token INT | [0-9]+;

sort Expr
    | ⟦ ⟨INT⟩ ⟧@2
    | ⟦ ⟨Expr@1⟩ * ⟨Expr@2⟩ ⟧@1
    | ⟦ ⟨Expr@1⟩ / ⟨Expr@2⟩ ⟧@1
    | ⟦ ⟨Expr@0⟩ + ⟨Expr@1⟩ ⟧@0
    | ⟦ ⟨Expr@0⟩ - ⟨Expr@1⟩ ⟧@0;

sort Expr | scheme Parse(Expr);
Parse(#) → #;

}
