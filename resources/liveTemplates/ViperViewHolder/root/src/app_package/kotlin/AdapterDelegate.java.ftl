package ${viperPackage}.view.adapter.delegate

import android.support.annotation.NonNull
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.ViewGroup

import com.hannesdorfmann.adapterdelegates3.AdapterDelegate
import com.mateuszkoslacz.moviper.recyclerviewsample.R

import ${viperPackage}.view.adapter.agregate.${aggregateName}Item
import ${viperPackage}.view.adapter.agregate.${prefix}${aggregateName}Item
import ${viperPackage}.view.viewholder.${prefix}ViewHolder

import java.util.List

class ${prefix}AdapterDelegate : AdapterDelegate<List<${aggregateName}Item>> {

    override protected fun isForViewType(items: List<${aggregateName}Item>?, position: Int): Boolean {
		return items.get(position).type == ${prefix}${aggregateName}Item.TYPE
    }

    override fun protected onCreateViewHolder(parent: ViewGroup): RecyclerView.ViewHolder {
        return ${prefix}ViewHolder(LayoutInflater
                .from(parent.getContext()).inflate(R.layout.viewholder_${prefix?lower_case}, parent, false))
    }

    override protected fun onBindViewHolder(items: List<${aggregateName}Item>?, position: Int,
                                    holder: RecyclerView.ViewHolder?,
                                    payloads: List<Object>?) {
        viewHolder: ${prefix}ViewHolder = holder as (${prefix}ViewHolder)
        viewHolder.dataObject = (items.get(position)).<#if createEntity>${prefix}()<#else>Object()</#if> as ${prefix}${aggregateName}Item
    }
}
