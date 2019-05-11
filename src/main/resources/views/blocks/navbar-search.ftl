<#ftl output_format="HTML">

<#-- @ftlvariable name="search" type="java.util.Optional<java.lang.String>" -->
<#-- @ftlvariable name="topicListView" type="org.kafkahq.repositories.TopicRepository.TopicListView" -->

<nav class="navbar navbar-expand-lg navbar-light bg-light mr-auto khq-data-filter">
    <form class="form-inline khq-form-get" method="get">
        <input class="form-control"
               name="search"
               placeholder="Search"
               autocomplete="off"
               type="text"
                <#if search.isPresent()>
                    value="${search.get()}"
                </#if> />
        <#if topicListView??>
            <select name="show" class="custom-select ml-sm-2 mt-2 mt-sm-0">
                <option ${(topicListView.toString() == "ALL")?then("selected", "")} value="ALL">Show all topics</option>
                <option ${(topicListView.toString() == "HIDE_INTERNAL")?then("selected", "")} value="HIDE_INTERNAL">Hide internal topics</option>
                <option ${(topicListView.toString() == "HIDE_INTERNAL_STREAM")?then("selected", "")} value="HIDE_INTERNAL_STREAM">Hide internal & stream topics</option>
                <option ${(topicListView.toString() == "HIDE_STREAM")?then("selected", "")} value="HIDE_STREAM">Hide stream topics</option>
            </select>
        </#if>

        <button class="btn btn-primary ml-sm-2 mt-2 mt-sm-0" type="submit">
            <span class="d-sm-none">Search </span><i class="fa fa-search"></i>
        </button>
    </form>
</nav>