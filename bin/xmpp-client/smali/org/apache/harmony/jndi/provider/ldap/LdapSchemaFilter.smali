.class public Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;
.super Ljava/lang/Object;
.source "LdapSchemaFilter.java"


# instance fields
.field private commonFilter:Lorg/apache/harmony/jndi/provider/ldap/Filter;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "filterValue"
    .parameter "filterArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;

    invoke-direct {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, commonFilterParser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    invoke-virtual {v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->setArgs([Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;->parse()Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;->commonFilter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    :try_end_0
    .catch Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 46
    .end local v0           #commonFilterParser:Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParser;
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Lorg/apache/harmony/jndi/provider/ldap/parser/ParseException;
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;

    .line 49
    const-string v3, "ldap.29"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/directory/InvalidSearchFilterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doFilter(Ljava/util/HashSet;Lorg/apache/harmony/jndi/provider/ldap/Filter;)Ljava/util/HashSet;
    .locals 23
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;",
            "Lorg/apache/harmony/jndi/provider/ldap/Filter;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 58
    .local p1, currentResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    const/4 v7, 0x0

    .line 70
    .local v7, filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getType()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 242
    :cond_0
    return-object v7

    .line 72
    :pswitch_0
    move-object/from16 v7, p1

    .line 73
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getChildren()Ljava/util/List;

    move-result-object v8

    .line 74
    .local v8, filters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/Filter;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 75
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;->doFilter(Ljava/util/HashSet;Lorg/apache/harmony/jndi/provider/ldap/Filter;)Ljava/util/HashSet;

    move-result-object v7

    .line 74
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 80
    .end local v8           #filters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/Filter;>;"
    .end local v10           #i:I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getChildren()Ljava/util/List;

    move-result-object v8

    .line 81
    .restart local v8       #filters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/Filter;>;"
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 82
    .restart local v7       #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 83
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;->doFilter(Ljava/util/HashSet;Lorg/apache/harmony/jndi/provider/ldap/Filter;)Ljava/util/HashSet;

    move-result-object v18

    .line 84
    .local v18, tempResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 82
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 89
    .end local v8           #filters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/Filter;>;"
    .end local v10           #i:I
    .end local v18           #tempResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :pswitch_2
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 90
    .restart local v7       #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/harmony/jndi/provider/ldap/Filter;

    .line 91
    .local v17, tempFilter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;->doFilter(Ljava/util/HashSet;Lorg/apache/harmony/jndi/provider/ldap/Filter;)Ljava/util/HashSet;

    move-result-object v18

    .line 93
    .restart local v18       #tempResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 94
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_1
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 95
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 96
    .local v15, searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 97
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v15           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .end local v17           #tempFilter:Lorg/apache/harmony/jndi/provider/ldap/Filter;
    .end local v18           #tempResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :pswitch_3
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 105
    .restart local v7       #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 106
    .local v13, pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    invoke-virtual {v13}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getType()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, attributeType:Ljava/lang/String;
    invoke-virtual {v13}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 109
    .local v6, attributeValue:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 110
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_2
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 111
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 112
    .restart local v15       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v15}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v3

    .line 113
    .local v3, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v3, :cond_2

    .line 114
    const/4 v9, 0x0

    .line 115
    .local v9, hasMatch:Z
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v20

    .line 117
    .local v20, valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_3
    :goto_4
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v21

    if-nez v21, :cond_4

    .line 124
    if-eqz v9, :cond_2

    .line 125
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 118
    :cond_4
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v19

    .line 119
    .local v19, value:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 120
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 119
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 121
    const/4 v9, 0x1

    goto :goto_4

    .line 132
    .end local v3           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v5           #attributeType:Ljava/lang/String;
    .end local v6           #attributeValue:Ljava/lang/Object;
    .end local v9           #hasMatch:Z
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v13           #pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    .end local v15           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .end local v19           #value:Ljava/lang/Object;
    .end local v20           #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :pswitch_4
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 134
    .restart local v7       #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 133
    check-cast v16, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;

    .line 135
    .local v16, substringFilter:Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->getType()Ljava/lang/String;

    move-result-object v5

    .line 136
    .restart local v5       #attributeType:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;->getSubstrings()Ljava/util/List;

    move-result-object v12

    .line 137
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;>;"
    const-string v4, ""

    .line 138
    .local v4, attributePatternValue:Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v10, v0, :cond_7

    .line 142
    const-string v21, "\\*"

    .line 143
    const-string v22, ".*"

    .line 142
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    const/16 v21, 0x2

    .line 144
    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 147
    .local v14, pattern:Ljava/util/regex/Pattern;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 148
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_5
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 149
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 150
    .restart local v15       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v15}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v3

    .line 151
    .restart local v3       #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v3, :cond_5

    .line 152
    const/4 v9, 0x0

    .line 153
    .restart local v9       #hasMatch:Z
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v20

    .line 154
    .restart local v20       #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_6
    :goto_7
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v21

    if-nez v21, :cond_8

    .line 160
    if-eqz v9, :cond_5

    .line 161
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 139
    .end local v3           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v9           #hasMatch:Z
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v14           #pattern:Ljava/util/regex/Pattern;
    .end local v15           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .end local v20           #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 155
    .restart local v3       #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .restart local v9       #hasMatch:Z
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .restart local v14       #pattern:Ljava/util/regex/Pattern;
    .restart local v15       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .restart local v20       #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_8
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v19

    .line 156
    .restart local v19       #value:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 157
    const/4 v9, 0x1

    goto :goto_7

    .line 169
    .end local v3           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v4           #attributePatternValue:Ljava/lang/String;
    .end local v5           #attributeType:Ljava/lang/String;
    .end local v9           #hasMatch:Z
    .end local v10           #i:I
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;>;"
    .end local v14           #pattern:Ljava/util/regex/Pattern;
    .end local v15           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .end local v16           #substringFilter:Lorg/apache/harmony/jndi/provider/ldap/Filter$SubstringFilter;
    .end local v19           #value:Ljava/lang/Object;
    .end local v20           #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :pswitch_5
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 170
    .restart local v7       #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 171
    .restart local v13       #pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    invoke-virtual {v13}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getType()Ljava/lang/String;

    move-result-object v5

    .line 172
    .restart local v5       #attributeType:Ljava/lang/String;
    invoke-virtual {v13}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 173
    .restart local v6       #attributeValue:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 174
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_9
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 175
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 176
    .restart local v15       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v15}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v3

    .line 177
    .restart local v3       #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v3, :cond_9

    .line 178
    const/4 v9, 0x0

    .line 179
    .restart local v9       #hasMatch:Z
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v20

    .line 180
    .restart local v20       #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_a
    :goto_9
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v21

    if-nez v21, :cond_b

    .line 187
    if-eqz v9, :cond_9

    .line 188
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 181
    :cond_b
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v19

    .line 182
    .restart local v19       #value:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 183
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 182
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-ltz v21, :cond_a

    .line 184
    const/4 v9, 0x1

    goto :goto_9

    .line 195
    .end local v3           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v5           #attributeType:Ljava/lang/String;
    .end local v6           #attributeValue:Ljava/lang/Object;
    .end local v9           #hasMatch:Z
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v13           #pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    .end local v15           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .end local v19           #value:Ljava/lang/Object;
    .end local v20           #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :pswitch_6
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 196
    .restart local v7       #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;

    .line 197
    .restart local v13       #pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    invoke-virtual {v13}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getType()Ljava/lang/String;

    move-result-object v5

    .line 198
    .restart local v5       #attributeType:Ljava/lang/String;
    invoke-virtual {v13}, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 199
    .restart local v6       #attributeValue:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 200
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_c
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 201
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 202
    .restart local v15       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v15}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v3

    .line 203
    .restart local v3       #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v3, :cond_c

    .line 204
    const/4 v9, 0x0

    .line 205
    .restart local v9       #hasMatch:Z
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v20

    .line 206
    .restart local v20       #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_d
    :goto_b
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v21

    if-nez v21, :cond_e

    .line 214
    if-eqz v9, :cond_c

    .line 215
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 207
    :cond_e
    invoke-interface/range {v20 .. v20}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v19

    .line 209
    .restart local v19       #value:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 210
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 209
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-gtz v21, :cond_d

    .line 211
    const/4 v9, 0x1

    goto :goto_b

    .line 222
    .end local v3           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v5           #attributeType:Ljava/lang/String;
    .end local v6           #attributeValue:Ljava/lang/Object;
    .end local v9           #hasMatch:Z
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v13           #pair:Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
    .end local v15           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .end local v19           #value:Ljava/lang/Object;
    .end local v20           #valuesEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :pswitch_7
    new-instance v7, Ljava/util/HashSet;

    .end local v7           #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 223
    .restart local v7       #filteredResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/ldap/Filter;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5       #attributeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 225
    .restart local v11       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_f
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 226
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 227
    .restart local v15       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v15}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v3

    .line 228
    .restart local v3       #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v3, :cond_f

    .line 229
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public filter(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 247
    .local p1, results:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;->commonFilter:Lorg/apache/harmony/jndi/provider/ldap/Filter;

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;->doFilter(Ljava/util/HashSet;Lorg/apache/harmony/jndi/provider/ldap/Filter;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
