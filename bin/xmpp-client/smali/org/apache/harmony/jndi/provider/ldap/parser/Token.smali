.class public Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

.field public specialToken:Lorg/apache/harmony/jndi/provider/ldap/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "kind"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>(ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "kind"
    .parameter "image"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->kind:I

    .line 120
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public static newToken(I)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 1
    .parameter "ofKind"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    move-result-object v0

    return-object v0
.end method

.method public static newToken(ILjava/lang/String;)Lorg/apache/harmony/jndi/provider/ldap/parser/Token;
    .locals 1
    .parameter "ofKind"
    .parameter "image"

    .prologue
    .line 51
    .line 53
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
