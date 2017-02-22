package ${viperPackage}.view.viewholder

import android.support.annotation.NonNull
import android.view.View

import com.mateuszkoslacz.moviper.base.view.ViperViewHolder
import ${viperPackage}.contract.${prefix}Contract
import ${viperPackage}.presenter.${prefix}Presenter
import ${viperPackage}.entity.${prefix}

class ${prefix}ViewHolder(itemView: View) : ViperViewHolder<${prefix}, ${prefix}Contract.View, ${prefix}Contract.Presenter>(itemView),
        ${prefix}Contract.View<#if createViewHelper>,
        ${prefix}Contract.ViewHelper</#if> {

    fun createPresenter(): ${prefix}Contract.Presenter? {
        return ${prefix}Presenter()
    }
}

