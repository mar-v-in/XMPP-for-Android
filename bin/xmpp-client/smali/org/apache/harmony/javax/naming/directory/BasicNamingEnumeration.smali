.class Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;
.super Ljava/lang/Object;
.source "BasicNamingEnumeration.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/NamingEnumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/harmony/javax/naming/NamingEnumeration",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;,"Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration<TT;>;"
    .local p1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;->enumeration:Ljava/util/Enumeration;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;,"Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration<TT;>;"
    return-void
.end method

.method public hasMore()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;,"Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;,"Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;,"Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;,"Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/BasicNamingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
