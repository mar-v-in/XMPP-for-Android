.class public Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "AttributeModificationException.java"


# static fields
.field private static final serialVersionUID:J = 0x6fdd462d96b0fdaaL


# instance fields
.field private unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    .line 70
    return-void
.end method

.method private toStringImpl(Z)Ljava/lang/String;
    .locals 7
    .parameter "flag"

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 124
    const-string v2, ". The unexecuted modification items are: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v3, p0, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 128
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 125
    :cond_1
    aget-object v0, v3, v2

    .line 126
    .local v0, element:Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/naming/directory/ModificationItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getUnexecutedModifications()[Lorg/apache/harmony/javax/naming/directory/ModificationItem;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    return-object v0
.end method

.method public setUnexecutedModifications([Lorg/apache/harmony/javax/naming/directory/ModificationItem;)V
    .locals 0
    .parameter "amodificationitem"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->unexecs:[Lorg/apache/harmony/javax/naming/directory/ModificationItem;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->toStringImpl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1
    .parameter "flag"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/directory/AttributeModificationException;->toStringImpl(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
