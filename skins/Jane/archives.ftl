<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-present, b3log.org

    Solo is licensed under Mulan PSL v2.
    You can use this software according to the terms and conditions of the Mulan PSL v2.
    You may obtain a copy of Mulan PSL v2 at:
            http://license.coscl.org.cn/MulanPSL2
    THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
    See the Mulan PSL v2 for more details.

-->
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
<head>
<@head title="${archiveLabel} - ${blogTitle}">
    <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
</@head>
</head>
<body>
<#include "header.ftl">
<div id="pjax" class="wrapper">
    <#if pjax><!---- pjax {#pjax} start ----></#if>
    <div class="article__item">
        <h2 class="article__title">
            <i class="icon__inbox"></i> ${archiveLabel}${articleLabel}
        </h2>
        <div class="ft__gray">
        ${statistic.statisticPublishedBlogArticleCount} ${countLabel}
        </div>
        <div class="tags tags--align fn__clear">
            <#list archiveDates as archiveDate>
            <#if "en" == localeString?substring(0, 2)>
                <a class="ft__red" href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}">
                    ${archiveDate.monthName} ${archiveDate.archiveDateYear}
                    <span class="ft__gray">(${archiveDate.archiveDatePublishedArticleCount})</span>
                </a>
            <#else>
                <a  class="ft__red"
                    href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}">
                    ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}
                    <span class="ft__gray">(${archiveDate.archiveDatePublishedArticleCount})</span>
                </a>
            </#if>
            </#list>
        </div>
    </div>
    <#if pjax><!---- pjax {#pjax} end ----></#if>
</div>
    <#include "footer.ftl">
</body>
</html>
