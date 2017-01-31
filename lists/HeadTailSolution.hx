module org.crsx.hacs.problems.lists.HeadTailSolution {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort Computed | scheme Head(List);
Head(⟦ ⟧) → error ⟦ Empty list ⟧;
Head(⟦ ⟨INT#x⟩ ⟨List#xs⟩ ⟧) → #x;

sort List | scheme Tail(List);
Tail(⟦ ⟧) → error ⟦ Empty list ⟧;
Tail(⟦ ⟨INT#x⟩ ⟨List#xs⟩ ⟧) → #xs;

}
