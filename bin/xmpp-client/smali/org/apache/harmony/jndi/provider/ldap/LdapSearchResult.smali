.class public Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;
.super Ljava/lang/Object;
.source "LdapSearchResult.java"


# static fields
.field private static ENUMERATION_BINDING:I

.field private static ENUMERATION_NAME_CLASS_PAIR:I

.field private static ENUMERATION_SEARCH_RESULT:I


# instance fields
.field private address:Ljava/lang/String;

.field private baseDN:Ljava/lang/String;

.field private batchSize:I

.field private binaryAttributes:[Ljava/lang/String;

.field private context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

.field protected entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private enumerationType:I

.field private ex:Lorg/apache/harmony/javax/naming/NamingException;

.field private isFinished:Z

.field private name:Lorg/apache/harmony/javax/naming/Name;

.field protected refURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    sput v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ENUMERATION_NAME_CLASS_PAIR:I

    .line 96
    const/4 v0, 0x2

    sput v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ENUMERATION_BINDING:I

    .line 98
    const/4 v0, 0x3

    sput v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ENUMERATION_SEARCH_RESULT:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method private addToEnumeration()V
    .locals 17

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v13, 0x0

    .line 108
    .local v13, tempEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    monitor-enter v15

    .line 109
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/util/HashMap;

    move-object v13, v0

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 108
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    if-nez v15, :cond_2

    .line 168
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ex:Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v14, v15}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->setException(Lorg/apache/harmony/javax/naming/NamingException;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isFinished:Z

    invoke-virtual {v14, v9, v15}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;->add(Ljava/util/Collection;Z)V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 114
    :cond_2
    :try_start_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 116
    .local v6, dn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->baseDN:Ljava/lang/String;

    .line 115
    invoke-static {v6, v15}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->convertToRelativeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 117
    .local v11, relativeName:Ljava/lang/String;
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 118
    .local v2, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    const-string v15, "javaClassName"

    invoke-interface {v2, v15}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v1

    .line 119
    .local v1, attrClass:Lorg/apache/harmony/javax/naming/directory/Attribute;
    const/4 v5, 0x0

    .line 120
    .local v5, className:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumerationType:I

    packed-switch v15, :pswitch_data_0

    goto :goto_1

    .line 122
    :pswitch_0
    if-eqz v1, :cond_3

    .line 123
    const/4 v15, 0x0

    invoke-interface {v1, v15}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #className:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 127
    .restart local v5       #className:Ljava/lang/String;
    :goto_3
    new-instance v10, Lorg/apache/harmony/javax/naming/NameClassPair;

    .line 128
    const/4 v15, 0x1

    .line 127
    invoke-direct {v10, v11, v5, v15}, Lorg/apache/harmony/javax/naming/NameClassPair;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    .local v10, pair:Lorg/apache/harmony/javax/naming/NameClassPair;
    invoke-virtual {v10, v6}, Lorg/apache/harmony/javax/naming/NameClassPair;->setNameInNamespace(Ljava/lang/String;)V

    .line 130
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 163
    .end local v1           #attrClass:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v2           #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v5           #className:Ljava/lang/String;
    .end local v6           #dn:Ljava/lang/String;
    .end local v10           #pair:Lorg/apache/harmony/javax/naming/NameClassPair;
    .end local v11           #relativeName:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 164
    .local v7, e:Lorg/apache/harmony/javax/naming/NamingException;
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ex:Lorg/apache/harmony/javax/naming/NamingException;

    .line 165
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isFinished:Z

    goto :goto_2

    .line 125
    .end local v7           #e:Lorg/apache/harmony/javax/naming/NamingException;
    .restart local v1       #attrClass:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .restart local v2       #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .restart local v5       #className:Ljava/lang/String;
    .restart local v6       #dn:Ljava/lang/String;
    .restart local v11       #relativeName:Ljava/lang/String;
    :cond_3
    :try_start_4
    const-class v15, Lorg/apache/harmony/javax/naming/directory/DirContext;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 133
    :pswitch_1
    const/4 v4, 0x0

    .line 135
    .local v4, bound:Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 136
    const/4 v15, 0x0

    invoke-interface {v1, v15}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #className:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 137
    .restart local v5       #className:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->name:Lorg/apache/harmony/javax/naming/Name;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v4

    .line 143
    .end local v4           #bound:Ljava/lang/Object;
    :goto_4
    new-instance v3, Lorg/apache/harmony/javax/naming/Binding;

    invoke-direct {v3, v11, v5, v4}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .local v3, binding:Lorg/apache/harmony/javax/naming/Binding;
    invoke-virtual {v3, v6}, Lorg/apache/harmony/javax/naming/Binding;->setNameInNamespace(Ljava/lang/String;)V

    .line 146
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 139
    .end local v3           #binding:Lorg/apache/harmony/javax/naming/Binding;
    .restart local v4       #bound:Ljava/lang/Object;
    :cond_4
    const-class v15, Lorg/apache/harmony/javax/naming/directory/DirContext;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 140
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .end local v4           #bound:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->baseDN:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/lang/String;)V

    .local v4, bound:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    goto :goto_4

    .line 149
    .end local v4           #bound:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
    :pswitch_2
    const/4 v12, 0x0

    .line 150
    .local v12, sr:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    const-string v15, "ldap://"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 151
    new-instance v12, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .end local v12           #sr:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v12, v6, v15, v2, v0}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;Z)V

    .line 152
    .restart local v12       #sr:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    const-string v15, "/"

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 153
    .local v8, index:I
    add-int/lit8 v15, v8, 0x1

    .line 154
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    .line 153
    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->setNameInNamespace(Ljava/lang/String;)V

    .line 159
    .end local v8           #index:I
    :goto_5
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 156
    :cond_5
    new-instance v12, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .end local v12           #sr:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    const/4 v15, 0x0

    invoke-direct {v12, v11, v15, v2}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 157
    .restart local v12       #sr:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v12, v6}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->setNameInNamespace(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected decodeDone(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 173
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    .line 174
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {v0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->decodeValues([Ljava/lang/Object;)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->isFinished:Z

    .line 176
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->addToEnumeration()V

    .line 177
    return-void
.end method

.method protected decodeEntry(Ljava/lang/Object;)V
    .locals 11
    .parameter "value"

    .prologue
    const/4 v10, 0x1

    .line 180
    move-object v7, p1

    check-cast v7, [Ljava/lang/Object;

    .line 181
    .local v7, values:[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->address:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->address:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_0
    const/4 v2, 0x0

    .line 188
    .local v2, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    monitor-enter v9

    .line 189
    :try_start_0
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-object v2, v0

    .line 188
    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    aget-object v4, v7, v10

    check-cast v4, Ljava/util/Collection;

    .line 198
    .local v4, list:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 206
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->addToEnumeration()V

    .line 207
    return-void

    .line 192
    .end local v4           #list:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v8, 0x1

    invoke-direct {v3, v8}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v2           #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .local v3, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    :try_start_2
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .end local v3           #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .restart local v2       #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v8

    :goto_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 198
    .restart local v4       #list:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 199
    .local v6, objects:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>()V

    .line 200
    .local v1, attr:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;
    invoke-virtual {v1, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->decodeValues([Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->getID()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->binaryAttributes:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->isBinary(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 202
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;->convertValueToString()V

    .line 204
    :cond_3
    invoke-interface {v2, v1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_1

    .line 188
    .end local v1           #attr:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;
    .end local v2           #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v4           #list:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/Object;>;"
    .end local v6           #objects:[Ljava/lang/Object;
    .restart local v3       #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .restart local v2       #attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    goto :goto_2
.end method

.method protected decodeRef(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 210
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->refURLs:Ljava/util/List;

    if-nez v2, :cond_0

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->refURLs:Ljava/util/List;

    :cond_0
    move-object v1, p1

    .line 214
    check-cast v1, Ljava/util/Collection;

    .line 215
    .local v1, list:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    return-void

    .line 215
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 216
    .local v0, bs:[B
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->refURLs:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public decodeSearchResponse([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 221
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;

    .line 222
    .local v0, chosen:Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getIndex()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 224
    :pswitch_0
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->decodeEntry(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->decodeRef(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->decodeDone(Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->batchSize:I

    return v0
.end method

.method public getBinaryAttributes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->binaryAttributes:[Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getException()Lorg/apache/harmony/javax/naming/NamingException;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ex:Lorg/apache/harmony/javax/naming/NamingException;

    return-object v0
.end method

.method public getRefURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->refURLs:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->result:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->refURLs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->refURLs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 268
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->address:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setBatchSize(I)V
    .locals 0
    .parameter "batchSize"

    .prologue
    .line 272
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->batchSize:I

    .line 273
    return-void
.end method

.method public setBinaryAttributes([Ljava/lang/String;)V
    .locals 0
    .parameter "binaryAttributes"

    .prologue
    .line 276
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->binaryAttributes:[Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "ex"

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ex:Lorg/apache/harmony/javax/naming/NamingException;

    .line 290
    .end local p1
    :goto_0
    return-void

    .line 284
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/apache/harmony/javax/naming/NamingException;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ex:Lorg/apache/harmony/javax/naming/NamingException;

    .line 286
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ex:Lorg/apache/harmony/javax/naming/NamingException;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/javax/naming/NamingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 288
    :cond_1
    check-cast p1, Lorg/apache/harmony/javax/naming/NamingException;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ex:Lorg/apache/harmony/javax/naming/NamingException;

    goto :goto_0
.end method

.method public setRefURLs(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, refURLs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->refURLs:Ljava/util/List;

    .line 294
    return-void
.end method

.method public toBindingEnumeration(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 3
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    sget v1, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ENUMERATION_BINDING:I

    iput v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumerationType:I

    .line 299
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v1, v2, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    .line 300
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->context:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 301
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->name:Lorg/apache/harmony/javax/naming/Name;

    .line 303
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->getNameInNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, tempName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v0, p2}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->baseDN:Ljava/lang/String;

    .line 307
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->addToEnumeration()V

    .line 309
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    return-object v1
.end method

.method public toNameClassPairEnumeration(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 2
    .parameter "baseDN"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 314
    sget v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ENUMERATION_NAME_CLASS_PAIR:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumerationType:I

    .line 315
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v0, v1, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    .line 316
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->baseDN:Ljava/lang/String;

    .line 317
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->addToEnumeration()V

    .line 318
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    return-object v0
.end method

.method public toSearchResultEnumeration(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 2
    .parameter "baseDN"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 323
    sget v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->ENUMERATION_SEARCH_RESULT:I

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumerationType:I

    .line 324
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v0, v1, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    .line 325
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->baseDN:Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->addToEnumeration()V

    .line 329
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;->enumeration:Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    return-object v0
.end method
