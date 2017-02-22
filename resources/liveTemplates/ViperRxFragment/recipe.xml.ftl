<?xml version="1.0"?>
<recipe>
    <instantiate from="root/res/layout/fragment_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(className)}.xml" />

    <instantiate from="root/src/app_package/${languageDir}/Fragment.${languageExt}.ftl"
                   to="${viperOut}/view/fragment/${prefix}Fragment.${languageExt}" />

    <instantiate from="../common/root/src/app_package/${languageDir}/rx/Interactor.${languageExt}.ftl"
                   to="${viperOut}/interactor/${prefix}Interactor.${languageExt}" />

    <instantiate from="../common/root/src/app_package/${languageDir}/rx/Presenter.${languageExt}.ftl"
                   to="${viperOut}/presenter/${prefix}Presenter.${languageExt}" />

    <#if viewState>
      <instantiate from="../common/root/src/app_package/${languageDir}/ViewState.${languageExt}.ftl"
                       to="${viperOut}/view/viewstate/${prefix}ViewState.${languageExt}" />
    </#if>

    <#if createViewHelper>
        <instantiate from="../common/root/src/app_package/${languageDir}/rx/ViewHelperContract.${languageExt}.ftl"
                       to="${viperOut}/contract/${prefix}Contract.${languageExt}" />

        <instantiate from="../common/root/src/app_package/${languageDir}/rx/ViewHelperRouting.${languageExt}.ftl"
                       to="${viperOut}/routing/${prefix}Routing.${languageExt}" />
    <#else>
        <instantiate from="../common/root/src/app_package/${languageDir}/rx/Contract.${languageExt}.ftl"
                       to="${viperOut}/contract/${prefix}Contract.${languageExt}" />

        <instantiate from="../common/root/src/app_package/${languageDir}/rx/Routing.${languageExt}.ftl"
                       to="${viperOut}/routing/${prefix}Routing.${languageExt}" />
    </#if>

    <open file="${viperOut}/contract/${prefix}Contract.${languageExt}" />
</recipe>
