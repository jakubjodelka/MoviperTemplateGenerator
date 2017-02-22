package ${viperPackage}.view.fragment

import android.os.Bundle
import android.support.annotation.NonNull
import android.support.annotation.Nullable
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if viewState>
import com.hannesdorfmann.mosby.mvp.viewstate.ViewState
</#if>
import ${appPackage}.R
import ${viperPackage}.contract.${prefix}Contract
import ${viperPackage}.presenter.${prefix}Presenter
import com.mateuszkoslacz.moviper.base.view.fragment.Viper<#if viewState>ViewState</#if>Fragment
<#if viewState>
import ${viperPackage}.view.viewstate.${prefix}ViewState
</#if>

public class ${prefix}Fragment :
        Viper<#if viewState>ViewState</#if>Fragment
        <${prefix}Contract.View,
                ${prefix}Contract.Presenter<#if viewState>,
                ${prefix}ViewState</#if>>(),
        ${prefix}Contract.View<#if createViewHelper>, ${prefix}Contract.ViewHelper</#if> {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_${classToResource(className)}, container, false)
    }

    override fun createPresenter(): ${prefix}Contract.Presenter? {
        return new ${prefix}Presenter()
    }

    <#if viewState>  
    override fun createViewState(): ViewState<${prefix}Contract.View> {
        return new ${prefix}ViewState()
    }  
  
    override fun onNewViewStateInstance() {
          
    }</#if>
}
