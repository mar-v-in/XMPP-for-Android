.class public Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;
.super Ljava/lang/Object;
.source "LdapNameParser.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/NameParser;
.implements Lorg/apache/harmony/jndi/internal/parser/LdapParser;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v4, list:Ljava/util/List;
    const/4 v1, 0x0

    .line 55
    .local v1, from:I
    iget-object v7, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 57
    .local v0, c:[C
    iget-object v7, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    :goto_0
    return-object v4

    .line 61
    :cond_0
    iget-object v7, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    :cond_1
    new-instance v7, Lorg/apache/harmony/javax/naming/InvalidNameException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 65
    :cond_2
    const/4 v5, 0x0

    .line 66
    .local v5, mark:I
    const/4 v3, 0x0

    .line 67
    .local v3, isInQuote:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v0

    if-lt v2, v7, :cond_3

    .line 101
    new-instance v7, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    iget-object v8, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/naming/ldap/Rdn;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 68
    :cond_3
    aget-char v7, v0, v2

    const/16 v8, 0x22

    if-ne v7, v8, :cond_6

    if-lez v2, :cond_6

    add-int/lit8 v7, v2, -0x1

    aget-char v7, v0, v7

    if-eq v7, v9, :cond_6

    .line 69
    if-eqz v3, :cond_5

    .line 70
    const/4 v3, 0x0

    .line 67
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    :cond_5
    const/4 v3, 0x1

    .line 76
    add-int/lit8 v5, v2, 0x1

    .line 77
    goto :goto_2

    .line 82
    :cond_6
    if-eqz v3, :cond_7

    .line 83
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    .line 86
    move v2, v5

    .line 87
    const/4 v3, 0x0

    .line 89
    goto :goto_2

    .line 92
    :cond_7
    aget-char v7, v0, v2

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_8

    aget-char v7, v0, v2

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_4

    :cond_8
    if-lez v2, :cond_4

    add-int/lit8 v7, v2, -0x1

    aget-char v7, v0, v7

    if-eq v7, v9, :cond_4

    .line 93
    iget-object v7, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, sub:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 95
    new-instance v7, Lorg/apache/harmony/javax/naming/InvalidNameException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/apache/harmony/jndi/internal/parser/LdapNameParser;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_9
    new-instance v7, Lorg/apache/harmony/javax/naming/ldap/Rdn;

    invoke-direct {v7, v6}, Lorg/apache/harmony/javax/naming/ldap/Rdn;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v2, 0x1

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/apache/harmony/javax/naming/ldap/LdapName;

    invoke-direct {v0, p1}, Lorg/apache/harmony/javax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
