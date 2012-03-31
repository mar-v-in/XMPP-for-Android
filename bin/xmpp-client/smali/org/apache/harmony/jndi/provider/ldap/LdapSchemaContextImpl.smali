.class public Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;
.super Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;
.source "LdapSchemaContextImpl.java"


# static fields
.field public static final ATTRIBUTE_DEFINITION:Ljava/lang/String; = "AttributeDefinition"

.field public static final ATTRIBUTE_TYPES:Ljava/lang/String; = "attributetypes"

.field public static final CLASS_DEFINITION:Ljava/lang/String; = "ClassDefinition"

.field public static final DEFINITION_LEVEL:I = 0x2

.field public static final LDAP_SYNTAXES:Ljava/lang/String; = "ldapsyntaxes"

.field public static final MATCHING_RULE:Ljava/lang/String; = "MatchingRule"

.field public static final MATCHING_RULES:Ljava/lang/String; = "matchingrules"

.field public static final OBJECT_CLASSES:Ljava/lang/String; = "objectclasses"

.field private static final OperationJndi2Ldap:[I = null

.field public static final SCHEMA_ROOT_LEVEL:I = 0x3

.field public static final SYNTAX_DEFINITION:Ljava/lang/String; = "SyntaxDefinition"

.field private static final schemaJndi2Ldap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final schemaLdap2Jndi:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cachedSubSchemas:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

.field private final level:I

.field private rdn:Lorg/apache/harmony/javax/naming/Name;

.field private final schemaTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 73
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaJndi2Ldap:Ljava/util/Hashtable;

    .line 75
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaJndi2Ldap:Ljava/util/Hashtable;

    const-string v1, "ClassDefinition"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectclasses"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaJndi2Ldap:Ljava/util/Hashtable;

    .line 77
    const-string v1, "AttributeDefinition"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attributetypes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaJndi2Ldap:Ljava/util/Hashtable;

    const-string v1, "SyntaxDefinition"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldapsyntaxes"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaJndi2Ldap:Ljava/util/Hashtable;

    const-string v1, "MatchingRule"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "matchingrules"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaLdap2Jndi:Ljava/util/Hashtable;

    .line 84
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaLdap2Jndi:Ljava/util/Hashtable;

    const-string v1, "objectclasses"

    const-string v2, "ClassDefinition"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaLdap2Jndi:Ljava/util/Hashtable;

    const-string v1, "attributetypes"

    const-string v2, "AttributeDefinition"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaLdap2Jndi:Ljava/util/Hashtable;

    const-string v1, "ldapsyntaxes"

    const-string v2, "SyntaxDefinition"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaLdap2Jndi:Ljava/util/Hashtable;

    const-string v1, "matchingrules"

    const-string v2, "MatchingRule"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    aput v3, v0, v3

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->OperationJndi2Ldap:[I

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Name;Ljava/util/Hashtable;I)V
    .locals 1
    .parameter "ctx"
    .parameter
    .parameter "dn"
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 108
    .local p2, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p4, schemaTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->rdn:Lorg/apache/harmony/javax/naming/Name;

    .line 102
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->cachedSubSchemas:Ljava/util/Hashtable;

    .line 109
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 110
    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->rdn:Lorg/apache/harmony/javax/naming/Name;

    .line 111
    iput-object p4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaTable:Ljava/util/Hashtable;

    .line 112
    iput p5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    .line 113
    return-void
.end method

.method private doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;
    .locals 8
    .parameter "name"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "I)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 234
    move-object v3, p1

    .line 235
    .local v3, targetDN:Lorg/apache/harmony/javax/naming/Name;
    iget v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    if-lt p2, v6, :cond_0

    .line 236
    new-instance v6, Lorg/apache/harmony/javax/naming/NameNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/javax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 239
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaTable:Ljava/util/Hashtable;

    .line 241
    .local v4, tempSchema:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 258
    return-object v4

    .line 242
    :cond_1
    invoke-interface {v3, v1}, Lorg/apache/harmony/javax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, key:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 244
    .local v5, tempValue:Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 245
    new-instance v6, Lorg/apache/harmony/javax/naming/NameNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/javax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 248
    :cond_2
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 250
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/harmony/jndi/provider/ldap/parser/SchemaParser;->parseValue(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 251
    .local v0, attributesTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-object v4, v0

    .line 241
    .end local v0           #attributesTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v5

    .line 254
    check-cast v4, Ljava/util/Hashtable;

    goto :goto_1
.end method

.method private doSimpleSearch(Lorg/apache/harmony/javax/naming/Name;Z)Ljava/util/HashSet;
    .locals 15
    .parameter "name"
    .parameter "searchSubTree"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Z)",
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
    .line 263
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v6

    .line 264
    .local v6, size:I
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v8

    .line 266
    .local v8, subschemaTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v5, searchResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 274
    .local v1, keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 290
    return-object v5

    .line 274
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 275
    .local v7, string:Ljava/lang/String;
    invoke-direct {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldap2jndi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, schemaName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/harmony/javax/naming/Name;

    .line 277
    .local v9, tempName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v9, v3}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    .line 278
    invoke-interface {v9}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v12

    iget v13, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    if-ge v12, v13, :cond_0

    .line 279
    invoke-virtual {p0, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v2

    .line 280
    .local v2, schemaAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    new-instance v4, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 280
    invoke-direct {v4, v12, v13, v14, v2}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 282
    .local v4, searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 284
    if-eqz p2, :cond_0

    .line 285
    move/from16 v0, p2

    invoke-direct {p0, v9, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doSimpleSearch(Lorg/apache/harmony/javax/naming/Name;Z)Ljava/util/HashSet;

    move-result-object v10

    .line 286
    .local v10, tempResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private filterAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 5
    .parameter "attributes"
    .parameter "attributesToReturn"

    .prologue
    .line 295
    if-nez p2, :cond_0

    .line 310
    .end local p1
    :goto_0
    return-object p1

    .line 300
    .restart local p1
    :cond_0
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 301
    .local v2, filteredAttrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    array-length v4, p2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    move-object p1, v2

    .line 310
    goto :goto_0

    .line 301
    :cond_1
    aget-object v1, p2, v3

    .line 302
    .local v1, element:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 303
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v0

    .line 304
    .local v0, attribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-eqz v0, :cond_2

    .line 305
    invoke-interface {v2, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 301
    .end local v0           #attribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isMatch(Lorg/apache/harmony/javax/naming/directory/Attributes;Lorg/apache/harmony/javax/naming/directory/Attributes;)Z
    .locals 8
    .parameter "schemaAttributes"
    .parameter "matchingAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 433
    if-nez p2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v5

    .line 438
    :cond_1
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    .line 442
    .local v0, enumeration:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :cond_2
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 443
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 444
    .local v2, matchAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, id:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v3

    .line 446
    .local v3, schemaAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-nez v3, :cond_3

    move v5, v6

    .line 447
    goto :goto_0

    .line 450
    :cond_3
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v4

    .line 451
    .local v4, singleEnu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_4
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 452
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/harmony/javax/naming/directory/Attribute;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v5, v6

    .line 453
    goto :goto_0
.end method

.method private jndi2ldap(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jndiName"

    .prologue
    .line 465
    sget-object v1, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaLdap2Jndi:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    .local v0, ldapName:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 475
    :goto_0
    return-object v1

    .line 470
    :cond_0
    sget-object v1, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaJndi2Ldap:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ldapName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 471
    .restart local v0       #ldapName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 472
    move-object v0, p1

    .line 475
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private ldap2jndi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "jndiName"

    .prologue
    .line 480
    sget-object v1, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaLdap2Jndi:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    .local v0, ldapName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 482
    move-object v0, p1

    .line 485
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected convertFromStringToName(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, name:Lorg/apache/harmony/javax/naming/CompositeName;
    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;

    move-result-object v0

    return-object v0
.end method

.method public createSubcontext(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 10
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v4

    .line 132
    .local v4, size:I
    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v7}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    .line 131
    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v5

    .line 134
    .local v5, subSchemaTree:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 136
    :cond_0
    new-instance v7, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    const-string v8, "jndi.8D"

    invoke-static {v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 139
    :cond_1
    iget v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    sub-int/2addr v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 141
    new-instance v7, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    const-string v8, "jndi.8E"

    invoke-static {v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 144
    :cond_2
    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v7}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, subSchemaType:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 147
    new-instance v7, Lorg/apache/harmony/javax/naming/NameAlreadyBoundException;

    invoke-direct {v7, v6}, Lorg/apache/harmony/javax/naming/NameAlreadyBoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    :cond_3
    invoke-static {p2}, Lorg/apache/harmony/jndi/provider/ldap/parser/SchemaParser;->format(Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, schemaLine:Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;

    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v7, v7, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    invoke-direct {v1, v7}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, op:Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v7}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->rdn:Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {v7, v8}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 154
    .local v0, modifySchemaName:Lorg/apache/harmony/javax/naming/Name;
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    .line 155
    new-instance v7, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 154
    invoke-direct {v2, v7, v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 157
    .local v2, schemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    sget-object v7, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->OperationJndi2Ldap:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 158
    new-instance v8, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    invoke-direct {v8, v2, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 157
    invoke-virtual {v1, v7, v8}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    .line 160
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V

    .line 161
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/ReferralException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/javax/naming/directory/DirContext;

    return-object v7

    .line 162
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V

    .line 229
    return-void
.end method

.method public destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 12
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v5

    .line 184
    .local v5, size:I
    add-int/lit8 v9, v5, -0x1

    invoke-interface {p1, v9}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    add-int/lit8 v10, v5, -0x1

    .line 183
    invoke-direct {p0, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v6

    .line 186
    .local v6, subSchemaTree:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v9, v5, -0x1

    invoke-interface {p1, v9}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 187
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, subSchemaType:Ljava/lang/String;
    invoke-direct {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    .local v2, schema:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    sub-int/2addr v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 197
    new-instance v9, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    const-string v10, "ldap.37"

    invoke-static {v10}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 200
    :cond_2
    iget v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    if-eq v9, v5, :cond_0

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, schemaLine:Ljava/lang/String;
    instance-of v9, v2, Ljava/util/Hashtable;

    if-eqz v9, :cond_3

    move-object v8, v2

    .line 207
    check-cast v8, Ljava/util/Hashtable;

    .line 208
    .local v8, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "orig"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .end local v8           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;

    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v9, v9, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    invoke-direct {v1, v9}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, op:Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
    add-int/lit8 v9, v5, -0x1

    invoke-interface {p1, v9}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->rdn:Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {v9, v10}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 213
    .local v0, modifySchemaName:Lorg/apache/harmony/javax/naming/Name;
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    .line 214
    new-instance v9, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 213
    invoke-direct {v3, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 216
    .local v3, schemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    sget-object v9, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->OperationJndi2Ldap:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    .line 217
    new-instance v10, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    iget-object v11, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    invoke-direct {v10, v3, v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 216
    invoke-virtual {v1, v9, v10}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    .line 219
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V

    .line 220
    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/ReferralException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1
    .parameter "name"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 12
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v8

    .line 317
    .local v8, size:I
    invoke-direct {p0, p1, v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v1

    .line 319
    .local v1, attributesTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 321
    .local v7, schemaAttributes:Lorg/apache/harmony/javax/naming/directory/BasicAttributes;
    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    sub-int/2addr v10, v8

    packed-switch v10, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-object v7

    .line 323
    :pswitch_0
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 324
    .local v5, keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 325
    .local v3, id:Ljava/lang/String;
    const-string v11, "orig"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 328
    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 329
    .local v9, value:Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 331
    .local v2, basicAttr:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    instance-of v11, v9, Ljava/util/List;

    if-eqz v11, :cond_3

    move-object v6, v9

    .line 332
    check-cast v6, Ljava/util/List;

    .line 333
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lt v4, v11, :cond_2

    .line 339
    .end local v4           #j:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :goto_3
    invoke-virtual {v7, v2}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_1

    .line 334
    .restart local v4       #j:I
    .restart local v6       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 337
    .end local v4           #j:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {v2, v9}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 344
    .end local v2           #basicAttr:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #value:Ljava/lang/Object;
    :pswitch_1
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    const-string v10, "objectclass"

    invoke-direct {v2, v10}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v2       #basicAttr:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->rdn:Lorg/apache/harmony/javax/naming/Name;

    invoke-interface {p1, v10}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    .line 346
    .local v0, allName:Lorg/apache/harmony/javax/naming/Name;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v7, v2}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAttributes(Lorg/apache/harmony/javax/naming/Name;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 6
    .parameter "name"
    .parameter "as"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v1

    .line 361
    .local v1, attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    const/4 v0, 0x0

    .line 362
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    new-instance v3, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 363
    .local v3, filteredAttrs:Lorg/apache/harmony/javax/naming/directory/Attributes;
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 369
    return-object v3

    .line 363
    :cond_0
    aget-object v2, p2, v4

    .line 364
    .local v2, element:Ljava/lang/String;
    invoke-interface {v1, v2}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    .line 366
    invoke-interface {v3, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 363
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected getClassDefinition(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 9
    .parameter "objectclassAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 386
    .local v4, definitionTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->schemaTable:Ljava/util/Hashtable;

    .line 387
    const-string v1, "objectclasses"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    .line 389
    .local v6, allDefinitionTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 390
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v8

    .line 392
    .local v8, ne:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_0
    invoke-interface {v8}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    .end local v8           #ne:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_0
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->env:Ljava/util/Hashtable;

    new-instance v3, Lorg/apache/harmony/javax/naming/CompositeName;

    .line 400
    const-string v1, "objectclasses"

    invoke-direct {v3, v1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    .line 401
    const/4 v5, 0x2

    move-object v1, p0

    .line 399
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Name;Ljava/util/Hashtable;I)V

    return-object v0

    .line 393
    .restart local v8       #ne:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_1
    invoke-interface {v8}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, attributeType:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    invoke-virtual {v4, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v0
.end method

.method public getSchema(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v0
.end method

.method public getSchema(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v0
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v0
.end method

.method public getSchemaClassDefinition(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/DirContext;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;

    invoke-direct {v0}, Lorg/apache/harmony/javax/naming/OperationNotSupportedException;-><init>()V

    throw v0
.end method

.method public list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 491
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    .line 493
    .local v2, size:I
    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v3

    .line 495
    .local v3, tempSchema:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 496
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v4, v7, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    .line 507
    :goto_0
    return-object v4

    .line 499
    :cond_0
    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 501
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/NameClassPair;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 507
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v4, v1, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    goto :goto_0

    .line 503
    :cond_1
    new-instance v5, Lorg/apache/harmony/javax/naming/NameClassPair;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldap2jndi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 504
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/apache/harmony/javax/naming/NameClassPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 541
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const/4 v7, 0x0

    .line 519
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    .line 521
    .local v2, size:I
    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v3

    .line 523
    .local v3, tempSchema:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 524
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v4, v7, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    .line 535
    :goto_0
    return-object v4

    .line 527
    :cond_0
    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 529
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/Binding;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 535
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v4, v1, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    goto :goto_0

    .line 531
    :cond_1
    new-instance v5, Lorg/apache/harmony/javax/naming/Binding;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldap2jndi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 532
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 531
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 547
    move-object v3, p1

    .line 548
    .local v3, targetDN:Lorg/apache/harmony/javax/naming/Name;
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->cachedSubSchemas:Ljava/util/Hashtable;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    .line 549
    .local v0, cachedSchema:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 563
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 552
    .restart local p0
    :cond_1
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v6

    .line 553
    .local v6, size:I
    if-eqz v6, :cond_0

    .line 557
    invoke-direct {p0, p1, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v4

    .line 559
    .local v4, newSchemaTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;

    .end local v0           #cachedSchema:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->env:Ljava/util/Hashtable;

    .line 560
    iget v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    sub-int/2addr v5, v6

    .line 559
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/Name;Ljava/util/Hashtable;I)V

    .line 561
    .restart local v0       #cachedSchema:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->cachedSubSchemas:Ljava/util/Hashtable;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 563
    goto :goto_0
.end method

.method public modifyAttributes(Ljava/lang/String;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 1
    .parameter "name"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 731
    return-void
.end method

.method public modifyAttributes(Ljava/lang/String;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 1
    .parameter "name"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 737
    return-void
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 6
    .parameter "name"
    .parameter "i"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 576
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "jndi.2E"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 579
    :cond_0
    if-nez p3, :cond_1

    .line 581
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "jndi.13"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 584
    :cond_1
    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    .line 585
    const/4 v4, 0x2

    if-eq p2, v4, :cond_2

    .line 591
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "jndi.14"

    invoke-static {v5, p2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 594
    :cond_2
    invoke-interface {p3}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    .line 595
    .local v0, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    invoke-interface {p3}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v4

    new-array v3, v4, [Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    .line 596
    .local v3, items:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    const/4 v1, 0x0

    .line 597
    .local v1, index:I
    :goto_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z

    move-result v4

    if-nez v4, :cond_3

    .line 601
    invoke-virtual {p0, p1, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V

    .line 602
    return-void

    .line 598
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    new-instance v5, Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-direct {v5, p2, v4}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;-><init>(ILorg/apache/harmony/javax/naming/directory/Attribute;)V

    aput-object v5, v3, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method public modifyAttributes(Lorg/apache/harmony/javax/naming/Name;[Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 28
    .parameter "name"
    .parameter "modificationItems"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-interface/range {p1 .. p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v19

    .line 610
    .local v19, size:I
    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 612
    new-instance v25, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    const-string v26, "ldap.38"

    invoke-static/range {v26 .. v26}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 616
    :cond_0
    add-int/lit8 v25, v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v25

    add-int/lit8 v26, v19, -0x1

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v22

    .line 618
    .local v22, subSchemaTree:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v25, v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 619
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 621
    .local v23, subSchemaType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 622
    .local v16, schema:Ljava/lang/Object;
    if-nez v16, :cond_1

    .line 623
    new-instance v25, Lorg/apache/harmony/javax/naming/NameNotFoundException;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/harmony/javax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 626
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    move/from16 v25, v0

    sub-int v25, v25, v19

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 628
    new-instance v25, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    const-string v26, "ldap.38"

    invoke-static/range {v26 .. v26}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 631
    :cond_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_4

    .line 725
    :cond_3
    :goto_0
    return-void

    .line 635
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 636
    .local v18, schemaLine:Ljava/lang/String;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/Hashtable;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v24, v16

    .line 637
    check-cast v24, Ljava/util/Hashtable;

    .line 638
    .local v24, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v25, "orig"

    invoke-virtual/range {v24 .. v25}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 642
    .end local v24           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v5

    .line 647
    .local v5, attributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 684
    invoke-static {v5}, Lorg/apache/harmony/jndi/provider/ldap/parser/SchemaParser;->format(Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/String;

    move-result-object v13

    .line 687
    .local v13, newSchemaLine:Ljava/lang/String;
    new-instance v14, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->subschemasubentry:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;-><init>(Ljava/lang/String;)V

    .line 688
    .local v14, op:Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
    add-int/lit8 v25, v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/naming/Name;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->rdn:Lorg/apache/harmony/javax/naming/Name;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Lorg/apache/harmony/javax/naming/Name;->addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v12

    .line 689
    .local v12, modifySchemaName:Lorg/apache/harmony/javax/naming/Name;
    new-instance v17, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    .line 690
    new-instance v25, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v26, v0

    .line 689
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 692
    .local v17, schemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    sget-object v25, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->OperationJndi2Ldap:[I

    const/16 v26, 0x3

    aget v25, v25, v26

    .line 693
    new-instance v26, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 692
    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    .line 694
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    .line 695
    new-instance v25, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->jndi2ldap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v13}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v26, v0

    .line 694
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 697
    .local v3, addSchemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    sget-object v25, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->OperationJndi2Ldap:[I

    const/16 v26, 0x1

    aget v25, v25, v26

    .line 698
    new-instance v26, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldapContext:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;-><init>(Lorg/apache/harmony/javax/naming/directory/Attribute;Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V

    .line 697
    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;->addModification(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V

    .line 700
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doBasicOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;)V

    .line 703
    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 704
    .local v20, subSchema:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 705
    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 647
    .end local v3           #addSchemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    .end local v12           #modifySchemaName:Lorg/apache/harmony/javax/naming/Name;
    .end local v13           #newSchemaLine:Ljava/lang/String;
    .end local v14           #op:Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
    .end local v17           #schemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    .end local v20           #subSchema:Ljava/lang/Object;
    :cond_6
    aget-object v9, p2, v25

    .line 648
    .local v9, modificationItem:Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    invoke-virtual {v9}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v11

    .line 649
    .local v11, modifyOperation:I
    invoke-virtual {v9}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->getAttribute()Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v10

    .line 651
    .local v10, modifyAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    packed-switch v11, :pswitch_data_0

    .line 647
    :cond_7
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 653
    :pswitch_0
    invoke-interface {v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v4

    .line 654
    .local v4, attribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    if-nez v4, :cond_8

    .line 655
    invoke-interface {v5, v10}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_2

    .line 657
    :cond_8
    invoke-interface {v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v7

    .line 658
    .local v7, enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_3
    invoke-interface {v7}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v27

    if-nez v27, :cond_9

    .line 661
    invoke-interface {v5, v4}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_2

    .line 659
    :cond_9
    invoke-interface {v7}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 666
    .end local v4           #attribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v7           #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :pswitch_1
    invoke-interface {v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v4

    .line 667
    .restart local v4       #attribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v7

    .line 668
    .restart local v7       #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_4
    invoke-interface {v7}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v27

    if-nez v27, :cond_a

    .line 671
    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v27

    if-nez v27, :cond_7

    .line 672
    invoke-interface {v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->remove(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_2

    .line 669
    :cond_a
    invoke-interface {v7}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 677
    .end local v4           #attribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v7           #enu:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :pswitch_2
    invoke-interface {v10}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->remove(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 678
    invoke-interface {v5, v10}, Lorg/apache/harmony/javax/naming/directory/Attributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_2

    .end local v9           #modificationItem:Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    .end local v10           #modifyAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v11           #modifyOperation:I
    .restart local v3       #addSchemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    .restart local v12       #modifySchemaName:Lorg/apache/harmony/javax/naming/Name;
    .restart local v13       #newSchemaLine:Ljava/lang/String;
    .restart local v14       #op:Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
    .restart local v17       #schemaEntry:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    .restart local v20       #subSchema:Ljava/lang/Object;
    :cond_b
    move-object/from16 v21, v20

    .line 714
    check-cast v21, Ljava/util/Hashtable;

    .line 715
    .local v21, subSchemaTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/Hashtable;->clear()V

    .line 717
    invoke-static {v13}, Lorg/apache/harmony/jndi/provider/ldap/parser/SchemaParser;->parseValue(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v15

    .line 718
    .local v15, parsedTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v15}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v25

    .line 719
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 720
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 721
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 722
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sOld"
    .parameter "sNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 760
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v1, p2}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V

    .line 761
    return-void
.end method

.method public rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    .locals 2
    .parameter "nOld"
    .parameter "nNew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 741
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 745
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 747
    :cond_2
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v1, "ldap.3A"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_3
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-gt v0, v1, :cond_4

    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 752
    :cond_4
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v1, "ldap.3B"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_5
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;

    const-string v1, "ldap.39"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/directory/SchemaViolationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    .line 896
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "objs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    .line 890
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    .line 877
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .parameter "as"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    .line 883
    new-instance v0, Lorg/apache/harmony/javax/naming/CompositeName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/CompositeName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "filter"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    .line 871
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/SearchControls;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 11
    .parameter "name"
    .parameter "filter"
    .parameter "filterArgs"
    .parameter "searchControls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/directory/SearchControls;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 808
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 815
    .local v6, searchResults:Ljava/util/HashSet;,"Ljava/util/HashSet<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    if-eqz p4, :cond_0

    .line 816
    invoke-virtual {p4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getSearchScope()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 817
    :cond_0
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doSimpleSearch(Lorg/apache/harmony/javax/naming/Name;Z)Ljava/util/HashSet;

    move-result-object v6

    .line 833
    :goto_0
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;

    invoke-direct {v4, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    .local v4, schemaFilter:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;
    invoke-virtual {v4, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;->filter(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v6

    .line 837
    if-eqz p4, :cond_1

    .line 838
    invoke-virtual {p4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 840
    invoke-virtual {p4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getReturningAttributes()[Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, attributesToReturn:[Ljava/lang/String;
    array-length v7, v0

    if-lez v7, :cond_5

    .line 843
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 844
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 859
    .end local v0           #attributesToReturn:[Ljava/lang/String;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 860
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 865
    new-instance v7, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    invoke-direct {v7, v2, v10}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    return-object v7

    .line 821
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v4           #schemaFilter:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;
    :cond_2
    invoke-virtual {p4}, Lorg/apache/harmony/javax/naming/directory/SearchControls;->getSearchScope()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 822
    invoke-direct {p0, p1, v9}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doSimpleSearch(Lorg/apache/harmony/javax/naming/Name;Z)Ljava/util/HashSet;

    move-result-object v6

    goto :goto_0

    .line 827
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v3

    .line 828
    .local v3, schemaAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    new-instance v5, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldap2jndi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 829
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 828
    invoke-direct {v5, v7, v8, v10, v3}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 830
    .local v5, searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 845
    .end local v3           #schemaAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v5           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .restart local v0       #attributesToReturn:[Ljava/lang/String;
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .restart local v4       #schemaFilter:Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaFilter;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 847
    .restart local v5       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-virtual {v5}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v7

    .line 846
    invoke-direct {p0, v7, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->filterAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v3

    .line 848
    .restart local v3       #schemaAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    invoke-virtual {v5, v3}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->setAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    goto :goto_1

    .line 851
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v3           #schemaAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v5           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 852
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 853
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    .line 854
    .restart local v5       #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    new-instance v7, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    invoke-direct {v7, v9}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    invoke-virtual {v5, v7}, Lorg/apache/harmony/javax/naming/directory/SearchResult;->setAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    goto :goto_3

    .line 862
    .end local v0           #attributesToReturn:[Ljava/lang/String;
    .end local v5           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 1
    .parameter "name"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .locals 14
    .parameter "name"
    .parameter "matchingAttributes"
    .parameter "attributesToReturn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
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
    .line 773
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v6

    .line 775
    .local v6, size:I
    invoke-direct {p0, p1, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->doLookup(Lorg/apache/harmony/javax/naming/Name;I)Ljava/util/Hashtable;

    move-result-object v8

    .line 782
    .local v8, subschemaTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v10, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->level:I

    sub-int/2addr v10, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 783
    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 784
    .local v1, keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 798
    new-instance v10, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    .line 800
    .end local v1           #keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :goto_1
    return-object v10

    .line 785
    .restart local v1       #keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 786
    .local v7, string:Ljava/lang/String;
    invoke-direct {p0, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldap2jndi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, schemaName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/harmony/javax/naming/Name;

    .line 788
    .local v9, tempName:Lorg/apache/harmony/javax/naming/Name;
    invoke-interface {v9, v4}, Lorg/apache/harmony/javax/naming/Name;->add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->getAttributes(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v3

    .line 790
    .local v3, schemaAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->isMatch(Lorg/apache/harmony/javax/naming/directory/Attributes;Lorg/apache/harmony/javax/naming/directory/Attributes;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 791
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->filterAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v3

    .line 793
    new-instance v5, Lorg/apache/harmony/javax/naming/directory/SearchResult;

    invoke-direct {p0, v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapSchemaContextImpl;->ldap2jndi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 794
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 793
    invoke-direct {v5, v11, v12, v13, v3}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V

    .line 795
    .local v5, searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 800
    .end local v1           #keyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/directory/SearchResult;>;"
    .end local v3           #schemaAttributes:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v4           #schemaName:Ljava/lang/String;
    .end local v5           #searchResult:Lorg/apache/harmony/javax/naming/directory/SearchResult;
    .end local v7           #string:Ljava/lang/String;
    .end local v9           #tempName:Lorg/apache/harmony/javax/naming/Name;
    :cond_2
    new-instance v10, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lorg/apache/harmony/jndi/provider/ldap/LdapNamingEnumeration;-><init>(Ljava/util/Collection;Lorg/apache/harmony/javax/naming/NamingException;)V

    goto :goto_1
.end method
