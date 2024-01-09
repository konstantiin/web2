package beans

class TableBean {
    private val limit = 22
    val table: ArrayList<Raw> = ArrayList()
    public fun addElement(element: Raw){
        if (table.size > limit) table.clear();
        table.add(element)
    }

}