module org.crsx.hacs.problems.lists.Product {

token INT | [0-9]+;

sort List
    | ⟦ ⟧
    | ⟦ ⟨INT⟩ ⟨List⟩ ⟧;

sort Computed | scheme Product(List);
Product(#) → error ⟦ Not implemented ⟧;

}
