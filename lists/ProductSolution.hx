module org.crsx.hacs.problems.lists.ProductSolution {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort Computed | scheme Mul(Computed, Computed);
Mul(#x, #y) → ⟦ $#x * $#y ⟧;

sort Computed | scheme Product(List);
Product(⟦ ⟧) → ⟦ 1 ⟧;
Product(⟦ ⟨INT#x⟩ ⟨List#xs⟩ ⟧) → Mul(#x, Product(#xs));

}
