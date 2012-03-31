.class public Lorg/apache/harmony/javax/naming/CannotProceedException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "CannotProceedException.java"


# static fields
.field private static final serialVersionUID:J = 0x10ed554208d3daedL


# instance fields
.field protected altName:Lorg/apache/harmony/javax/naming/Name;

.field protected altNameCtx:Lorg/apache/harmony/javax/naming/Context;

.field protected environment:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation
.end field

.field protected remainingNewName:Lorg/apache/harmony/javax/naming/Name;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 78
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altName:Lorg/apache/harmony/javax/naming/Name;

    .line 86
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altNameCtx:Lorg/apache/harmony/javax/naming/Context;

    .line 94
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->environment:Ljava/util/Hashtable;

    .line 104
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->remainingNewName:Lorg/apache/harmony/javax/naming/Name;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altName:Lorg/apache/harmony/javax/naming/Name;

    .line 86
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altNameCtx:Lorg/apache/harmony/javax/naming/Context;

    .line 94
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->environment:Ljava/util/Hashtable;

    .line 104
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->remainingNewName:Lorg/apache/harmony/javax/naming/Name;

    .line 126
    return-void
.end method


# virtual methods
.method public getAltName()Lorg/apache/harmony/javax/naming/Name;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altName:Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public getAltNameCtx()Lorg/apache/harmony/javax/naming/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altNameCtx:Lorg/apache/harmony/javax/naming/Context;

    return-object v0
.end method

.method public getEnvironment()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->environment:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getRemainingNewName()Lorg/apache/harmony/javax/naming/Name;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->remainingNewName:Lorg/apache/harmony/javax/naming/Name;

    return-object v0
.end method

.method public setAltName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 178
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altName:Lorg/apache/harmony/javax/naming/Name;

    .line 179
    return-void
.end method

.method public setAltNameCtx(Lorg/apache/harmony/javax/naming/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 189
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->altNameCtx:Lorg/apache/harmony/javax/naming/Context;

    .line 190
    return-void
.end method

.method public setEnvironment(Ljava/util/Hashtable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, hashtable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->environment:Ljava/util/Hashtable;

    .line 201
    return-void
.end method

.method public setRemainingNewName(Lorg/apache/harmony/javax/naming/Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 219
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/harmony/javax/naming/CannotProceedException;->remainingNewName:Lorg/apache/harmony/javax/naming/Name;

    .line 220
    return-void

    .line 219
    :cond_0
    invoke-interface {p1}, Lorg/apache/harmony/javax/naming/Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/Name;

    goto :goto_0
.end method
