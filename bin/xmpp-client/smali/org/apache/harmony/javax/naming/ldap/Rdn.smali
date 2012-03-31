.class public Lorg/apache/harmony/javax/naming/ldap/Rdn;
.super Ljava/lang/Object;
.source "Rdn.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53309e37f58a6c38L


# instance fields
.field private transient list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private transient parser:Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "rdnString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rdnString "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;

    invoke-direct {v0, p1}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->parser:Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;

    .line 108
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->parser:Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 126
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v2, "ldap.04"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 131
    new-instance v0, Lorg/apache/harmony/javax/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v2, "ldap.04"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    new-instance v0, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    .line 136
    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 135
    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->convertToAttributeArrayList(Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 5
    .parameter "attrSet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attrSet "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v4, "ldap.00"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    new-instance v2, Lorg/apache/harmony/javax/naming/InvalidNameException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "atrrSet "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v4, "ldap.03"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v1

    .line 80
    .local v1, ne:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :goto_0
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->convertToAttributeArrayList(Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    .line 89
    return-void

    .line 81
    :cond_2
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 83
    .local v0, at:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/harmony/javax/naming/ldap/Rdn;)V
    .locals 3
    .parameter "rdn"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rdn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->convertToAttributeArrayList(Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    .line 98
    return-void
.end method

.method private convertToAttributeArrayList(Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/util/List;
    .locals 5
    .parameter "attrList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/directory/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;-><init>()V

    .line 178
    .local v1, myList:Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v2

    .line 180
    .local v2, ne:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :goto_0
    :try_start_0
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 187
    :goto_1
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->toAttributeList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 181
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 182
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/apache/harmony/jndi/internal/parser/LdapTypeAndValueList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 184
    .end local v0           #attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static escapeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "val"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "val "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-static {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 289
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, rdnString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 291
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rdnString "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    const-string v3, "ldap.00"

    invoke-static {v3}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    new-instance v1, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;

    invoke-direct {v1, v0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->parser:Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;

    .line 296
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->parser:Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public static unescapeValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "val"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "val "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-static {p0}, Lorg/apache/harmony/jndi/internal/parser/LdapRdnParser;->unescapeValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 358
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 359
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter "obj"

    .prologue
    .line 141
    instance-of v4, p1, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    if-nez v4, :cond_0

    .line 142
    new-instance v4, Ljava/lang/ClassCastException;

    const-string v5, "ldap.06"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v1, p1

    .line 144
    check-cast v1, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    .line 145
    .local v1, rdn:Lorg/apache/harmony/javax/naming/ldap/Rdn;
    const-string v2, ""

    .line 146
    .local v2, s1:Ljava/lang/String;
    const-string v3, ""

    .line 148
    .local v3, s2:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    .line 149
    .local v0, iter:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    .line 148
    if-nez v4, :cond_1

    .line 160
    invoke-virtual {v1}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v0

    .line 161
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    .line 160
    if-nez v4, :cond_2

    .line 172
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 150
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .parameter "obj"

    .prologue
    .line 193
    instance-of v11, p1, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->size()I

    move-result v12

    move-object v11, p1

    check-cast v11, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-virtual {v11}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->size()I

    move-result v11

    if-eq v12, v11, :cond_1

    .line 194
    :cond_0
    const/4 v11, 0x0

    .line 239
    .end local p1
    :goto_0
    return v11

    .line 197
    .restart local p1
    :cond_1
    if-ne p0, p1, :cond_2

    .line 198
    const/4 v11, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v11

    .line 202
    invoke-interface {v11}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v5

    .line 203
    .local v5, iter1:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    check-cast p1, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    .line 204
    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/harmony/javax/naming/directory/Attributes;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v6

    .line 206
    .local v6, iter2:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<+Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :cond_3
    invoke-interface {v5}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_4

    .line 239
    const/4 v11, 0x1

    goto :goto_0

    .line 207
    :cond_4
    invoke-interface {v5}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 208
    .local v0, a1:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v6}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 210
    .local v1, a2:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 211
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v11

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v12

    if-eq v11, v12, :cond_6

    .line 212
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 215
    :cond_6
    const/4 v3, 0x0

    .line 216
    .local v3, en1:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    const/4 v4, 0x0

    .line 218
    .local v4, en2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :try_start_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v3

    .line 219
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 225
    :cond_7
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 226
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    .line 227
    .local v7, o1:Ljava/lang/Object;
    instance-of v11, v7, Ljava/lang/String;

    if-eqz v11, :cond_8

    check-cast v7, Ljava/lang/String;

    .end local v7           #o1:Ljava/lang/Object;
    move-object v9, v7

    .line 230
    .local v9, s1:Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    .line 231
    .local v8, o2:Ljava/lang/Object;
    instance-of v11, v8, Ljava/lang/String;

    if-eqz v11, :cond_9

    check-cast v8, Ljava/lang/String;

    .end local v8           #o2:Ljava/lang/Object;
    move-object v10, v8

    .line 234
    .local v10, s2:Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 235
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 220
    .end local v9           #s1:Ljava/lang/String;
    .end local v10           #s2:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Lorg/apache/harmony/javax/naming/NamingException;
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 228
    .end local v2           #e:Lorg/apache/harmony/javax/naming/NamingException;
    .restart local v7       #o1:Ljava/lang/Object;
    :cond_8
    invoke-static {v7}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 232
    .end local v7           #o1:Ljava/lang/Object;
    .restart local v8       #o2:Ljava/lang/Object;
    .restart local v9       #s1:Ljava/lang/String;
    :cond_9
    invoke-static {v8}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, a:Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/directory/Attribute;

    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    .end local v0           #a:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 251
    .restart local v0       #a:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 250
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 258
    const/4 v7, 0x0

    .line 260
    .local v7, sum:I
    iget-object v8, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 283
    return v7

    .line 260
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 261
    .local v1, a:Lorg/apache/harmony/javax/naming/directory/Attribute;
    const/4 v3, 0x0

    .line 262
    .local v3, en:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    add-int/2addr v7, v9

    .line 265
    :try_start_0
    invoke-interface {v1}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 270
    :goto_1
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 271
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 272
    .local v4, obj:Ljava/lang/Object;
    instance-of v9, v4, [B

    if-eqz v9, :cond_2

    .line 273
    new-instance v5, Ljava/lang/String;

    check-cast v4, [B

    .end local v4           #obj:Ljava/lang/Object;
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .local v5, obj:Ljava/lang/String;
    move-object v4, v5

    .line 276
    .end local v5           #obj:Ljava/lang/String;
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_2
    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 277
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    add-int/2addr v7, v9

    goto :goto_1

    .line 266
    .end local v4           #obj:Ljava/lang/Object;
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 267
    .local v2, e:Lorg/apache/harmony/javax/naming/NamingException;
    goto :goto_0

    .line 278
    .end local v2           #e:Lorg/apache/harmony/javax/naming/NamingException;
    .restart local v4       #obj:Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 279
    .local v2, e:Ljava/lang/ClassCastException;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_1
.end method

.method public size()I
    .locals 4

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, result:I
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    return v1

    .line 304
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 305
    .local v0, attribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public toAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 7

    .prologue
    .line 311
    new-instance v2, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;-><init>(Z)V

    .line 312
    .local v2, bas:Lorg/apache/harmony/javax/naming/directory/BasicAttributes;
    iget-object v4, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    return-object v2

    .line 312
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 313
    .local v0, attr:Lorg/apache/harmony/javax/naming/directory/Attribute;
    new-instance v1, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Z)V

    .line 315
    .local v1, ba:Lorg/apache/harmony/javax/naming/directory/BasicAttribute;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v3

    .line 316
    .local v3, nameEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :goto_1
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 322
    .end local v3           #nameEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :goto_2
    invoke-virtual {v2, v1}, Lorg/apache/harmony/javax/naming/directory/BasicAttributes;->put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    goto :goto_0

    .line 317
    .restart local v3       #nameEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/harmony/javax/naming/directory/BasicAttribute;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 319
    .end local v3           #nameEnum:Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2b

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/apache/harmony/javax/naming/ldap/Rdn;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/directory/Attribute;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 331
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/directory/Attribute;

    .line 332
    .local v0, element:Lorg/apache/harmony/javax/naming/directory/Attribute;
    const/4 v2, 0x0

    .line 335
    .local v2, ne:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :try_start_0
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 339
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_3

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 340
    :cond_3
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-interface {v2}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 336
    :catch_0
    move-exception v4

    goto :goto_1
.end method
