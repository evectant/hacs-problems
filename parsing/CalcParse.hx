module org.crsx.hacs.problems.parsing.CalcParse {

token INT | [0-9]+;

sort Expr
    | ⟦ ⟨INT⟩ ⟧
    | ⟦ ⟨Expr⟩ * ⟨Expr⟩ ⟧
    | ⟦ ⟨Expr⟩ / ⟨Expr⟩ ⟧
    | ⟦ ⟨Expr⟩ + ⟨Expr⟩ ⟧
    | ⟦ ⟨Expr⟩ - ⟨Expr⟩ ⟧;

sort Expr | scheme Parse(Expr);
Parse(#) → #;

}
