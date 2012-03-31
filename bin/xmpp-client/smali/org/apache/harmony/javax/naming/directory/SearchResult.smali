.class public Lorg/apache/harmony/javax/naming/directory/SearchResult;
.super Lorg/apache/harmony/javax/naming/Binding;
.source "SearchResult.java"


# static fields
.field private static final serialVersionUID:J = -0x7f17fa133612e3a4L


# instance fields
.field private attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 6
    .parameter "s"
    .parameter "o"
    .parameter "attributes"

    .prologue
    .line 66
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;Z)V
    .locals 6
    .parameter "s"
    .parameter "o"
    .parameter "attributes"
    .parameter "flag"

    .prologue
    .line 98
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 6
    .parameter "s"
    .parameter "s1"
    .parameter "o"
    .parameter "attributes"

    .prologue
    .line 128
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/javax/naming/directory/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;Z)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/harmony/javax/naming/directory/Attributes;Z)V
    .locals 2
    .parameter "s"
    .parameter "s1"
    .parameter "o"
    .parameter "attributes"
    .parameter "flag"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/apache/harmony/javax/naming/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 168
    if-nez p4, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jndi.8B"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput-object p4, p0, Lorg/apache/harmony/javax/naming/directory/SearchResult;->attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 173
    return-void
.end method


# virtual methods
.method public getAttributes()Lorg/apache/harmony/javax/naming/directory/Attributes;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/SearchResult;->attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;

    return-object v0
.end method

.method public setAttributes(Lorg/apache/harmony/javax/naming/directory/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jndi.8B"

    invoke-static {v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/directory/SearchResult;->attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/harmony/javax/naming/Binding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lorg/apache/harmony/javax/naming/directory/SearchResult;->attrs:Lorg/apache/harmony/javax/naming/directory/Attributes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    return-object v0
.end method
