.class public Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;
.super Ljava/lang/Object;
.source "ChoiceCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x372c6568bccd79c7L


# instance fields
.field private choices:[Ljava/lang/String;

.field private defaultChoice:I

.field private final multipleSelectionsAllowed:Z

.field private prompt:Ljava/lang/String;

.field private selections:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 0
    .parameter "prompt"
    .parameter "choices"
    .parameter "defaultChoice"
    .parameter "multipleSelectionsAllowed"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setPrompt(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setChoices([Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p3}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setDefaultChoice(I)V

    .line 46
    iput-boolean p4, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    .line 47
    return-void
.end method

.method private setChoices([Ljava/lang/String;)V
    .locals 4
    .parameter "choices"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.1C"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 81
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    .line 83
    return-void

    .line 73
    :cond_2
    aget-object v0, p1, v1

    .line 74
    .local v0, choice:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 75
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 76
    const-string v2, "auth.1C"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setDefaultChoice(I)V
    .locals 2
    .parameter "defaultChoice"

    .prologue
    .line 86
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1D"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->defaultChoice:I

    .line 90
    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "prompt"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->prompt:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public allowMultipleSelections()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    return v0
.end method

.method public getChoices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultChoice()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->defaultChoice:I

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIndexes()[I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    return-object v0
.end method

.method public setSelectedIndex(I)V
    .locals 2
    .parameter "selection"

    .prologue
    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    .line 101
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 102
    return-void
.end method

.method public setSelectedIndexes([I)V
    .locals 1
    .parameter "selections"

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    .line 113
    return-void
.end method
