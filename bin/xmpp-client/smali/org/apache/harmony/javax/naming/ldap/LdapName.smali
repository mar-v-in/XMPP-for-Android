.class public Lorg/apache/harmony/javax/naming/ldap/LdapName;
.super Ljava/lang/Object;
.source "LdapName.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/Name;


# static fields
.field private static final serialVersionUID:J = -0x16246d04a99df8ecL


# instance fields
.field private transient rdns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/Rdn;",
            ">;"
        }
    .end annotation
.end field

.field private transient rdnsStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    .line 55
    new-instance v0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, parser:Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/Rdn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, rdns:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rdns "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    .line 51
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 286
    new-instance v0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;

    .line 287
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 286
    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, parser:Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    .line 289
    return-void
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
    .line 348
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 349
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 350
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "posn"
    .parameter "comp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-direct {v0, p2}, Lorg/apache/harmony/javax/naming/ldap/Rdn;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->add(ILorg/apache/harmony/javax/naming/ldap/Rdn;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method public add(ILorg/apache/harmony/javax/naming/ldap/Rdn;)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "posn"
    .parameter "comp"

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "comp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "ldap.05"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "comp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/harmony/javax/naming/ldap/Rdn;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "comp"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->add(ILorg/apache/harmony/javax/naming/ldap/Rdn;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method public addAll(ILjava/util/List;)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "posn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/Rdn;",
            ">;)",
            "Lorg/apache/harmony/javax/naming/Name;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, suffixRdns:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    if-nez p2, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "suffixRdns "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v2, "ldap.00"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "ldap.00"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public addAll(ILorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 4
    .parameter "posn"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 106
    instance-of v2, p2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-eqz v2, :cond_0

    .line 107
    check-cast p2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    .end local p2
    iget-object v2, p2, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->addAll(ILjava/util/List;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    .line 114
    :goto_0
    return-object v2

    .line 109
    .restart local p2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, rdns:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    invoke-interface {p2}, Lorg/apache/harmony/javax/naming/Name;->getAll()Ljava/util/Enumeration;

    move-result-object v0

    .line 111
    .local v0, iter:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    .line 110
    if-nez v2, :cond_1

    .line 114
    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->addAll(ILjava/util/List;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_1
    new-instance v3, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/apache/harmony/javax/naming/ldap/Rdn;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addAll(Ljava/util/List;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/Rdn;",
            ">;)",
            "Lorg/apache/harmony/javax/naming/Name;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, suffixRdns:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->addAll(ILjava/util/List;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->addAll(ILorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 129
    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v2

    .line 134
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, lista:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 138
    new-instance v2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-direct {v2, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .parameter "obj"

    .prologue
    .line 143
    if-eqz p1, :cond_0

    instance-of v4, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-nez v4, :cond_1

    .line 144
    :cond_0
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "obj "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "ldap.01"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v3, p1

    .line 147
    check-cast v3, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    .line 149
    .local v3, ln:Lorg/apache/harmony/javax/naming/ldap/LdapName;
    iget-object v4, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    iget-object v4, v3, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 152
    .local v2, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 161
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 162
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    .line 153
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, c:I
    if-eqz v0, :cond_2

    goto :goto_0

    .line 164
    .end local v0           #c:I
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 165
    const/4 v0, -0x1

    goto :goto_0

    .line 168
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endsWith(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/Rdn;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rdns:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    const/4 v4, 0x0

    .line 173
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v3, v5

    .line 174
    invoke-virtual {p0, v3}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    .line 175
    iget-object v3, v3, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    .local v2, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    const/4 v3, 0x1

    .line 185
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    return v3

    .line 178
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v2       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 179
    goto :goto_0

    .line 184
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    move v3, v4

    .line 185
    goto :goto_0
.end method

.method public endsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 3
    .parameter "n"

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getSuffix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 200
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 217
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 204
    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    .line 206
    .local v2, ln:Lorg/apache/harmony/javax/naming/ldap/LdapName;
    iget-object v3, v2, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_2

    move v3, v4

    .line 207
    goto :goto_0

    .line 210
    :cond_2
    iget-object v3, v2, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 211
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 217
    const/4 v3, 0x1

    goto :goto_0

    .line 213
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 214
    goto :goto_0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "posn"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getRdn(I)Lorg/apache/harmony/javax/naming/ldap/Rdn;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getRdns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 229
    .local v0, rdns:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    new-instance v1, Lorg/apache/harmony/javax/naming/ldap/LdapName$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/javax/naming/ldap/LdapName$1;-><init>(Lorg/apache/harmony/javax/naming/ldap/LdapName;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getPrefix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "posn"

    .prologue
    .line 245
    if-gez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "ldap.02"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getRdn(I)Lorg/apache/harmony/javax/naming/ldap/Rdn;
    .locals 1
    .parameter "posn"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    return-object v0
.end method

.method public getRdns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/Rdn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    return-object v0
.end method

.method public getSuffix(I)Lorg/apache/harmony/javax/naming/Name;
    .locals 3
    .parameter "posn"

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "ldap.02"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    iget-object v1, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, sum:I
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    return v1

    .line 271
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, name:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "posn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/javax/naming/ldap/Rdn;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rdns:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/javax/naming/ldap/Rdn;>;"
    const/4 v4, 0x0

    .line 304
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 305
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    iget-object v3, v3, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    .line 306
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 308
    .local v2, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    const/4 v3, 0x1

    .line 315
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    return v3

    .line 309
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v2       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 310
    goto :goto_0

    .line 314
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    move v3, v4

    .line 315
    goto :goto_0
.end method

.method public startsWith(Lorg/apache/harmony/javax/naming/Name;)Z
    .locals 2
    .parameter "n"

    .prologue
    .line 322
    :try_start_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;->getPrefix(I)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :goto_0
    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdnsStr:Ljava/lang/String;

    .line 344
    :goto_0
    return-object v2

    .line 334
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 335
    const-string v2, ""

    goto :goto_0

    .line 338
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x2

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_2

    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 341
    :cond_2
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/ldap/LdapName;->rdns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-virtual {v2}, Lorg/apache/harmony/javax/naming/ldap/Rdn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
