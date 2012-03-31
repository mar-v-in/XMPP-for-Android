.class public Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;
.super Ljava/lang/Object;
.source "ConfirmationCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANCEL:I = 0x2

.field public static final ERROR:I = 0x2

.field public static final INFORMATION:I = 0x0

.field public static final NO:I = 0x1

.field public static final OK:I = 0x3

.field public static final OK_CANCEL_OPTION:I = 0x2

.field public static final UNSPECIFIED_OPTION:I = -0x1

.field public static final WARNING:I = 0x1

.field public static final YES:I = 0x0

.field public static final YES_NO_CANCEL_OPTION:I = 0x1

.field public static final YES_NO_OPTION:I = 0x0

.field private static final serialVersionUID:J = -0x7e3a4355ee99e2d8L


# instance fields
.field private final defaultOption:I

.field private final messageType:I

.field private optionType:I

.field private options:[Ljava/lang/String;

.field private prompt:Ljava/lang/String;

.field private selection:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .parameter "messageType"
    .parameter "optionType"
    .parameter "defaultOption"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 67
    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.16"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.18"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_0
    if-eqz p3, :cond_2

    if-eq p3, v2, :cond_2

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    const-string v1, "auth.17"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_1
    if-eqz p3, :cond_2

    if-eq p3, v2, :cond_2

    .line 80
    if-eq p3, v1, :cond_2

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    const-string v1, "auth.17"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_2
    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_2

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 88
    const-string v1, "auth.17"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 95
    iput p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 96
    iput p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 97
    return-void

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(I[Ljava/lang/String;I)V
    .locals 4
    .parameter "messageType"
    .parameter "options"
    .parameter "defaultOption"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 102
    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.16"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 107
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.1A"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_3
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_5

    .line 115
    if-ltz p3, :cond_4

    array-length v1, p2

    if-lt p3, v1, :cond_8

    .line 116
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.17"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_5
    aget-object v0, p2, v1

    .line 110
    .local v0, option:Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 111
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 112
    const-string v2, "auth.1A"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0           #option:Ljava/lang/String;
    :cond_8
    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    .line 121
    iput p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 122
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .parameter "prompt"
    .parameter "messageType"
    .parameter "optionType"
    .parameter "defaultOption"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    if-gt p2, v1, :cond_2

    if-gez p2, :cond_3

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.16"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_3
    packed-switch p3, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.18"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    if-eqz p4, :cond_4

    if-eq p4, v2, :cond_4

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    const-string v1, "auth.17"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_1
    if-eqz p4, :cond_4

    if-eq p4, v2, :cond_4

    .line 145
    if-eq p4, v1, :cond_4

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 147
    const-string v1, "auth.17"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_2
    const/4 v0, 0x3

    if-eq p4, v0, :cond_4

    if-eq p4, v1, :cond_4

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 153
    const-string v1, "auth.17"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_4
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->prompt:Ljava/lang/String;

    .line 160
    iput p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 161
    iput p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 162
    iput p4, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 163
    return-void

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 4
    .parameter "prompt"
    .parameter "messageType"
    .parameter "options"
    .parameter "defaultOption"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.14"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_1
    const/4 v1, 0x2

    if-gt p2, v1, :cond_2

    if-gez p2, :cond_3

    .line 173
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.16"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_3
    if-eqz p3, :cond_4

    array-length v1, p3

    if-nez v1, :cond_5

    .line 177
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.1A"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_5
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_7

    .line 185
    if-ltz p4, :cond_6

    array-length v1, p3

    if-lt p4, v1, :cond_a

    .line 186
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "auth.17"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_7
    aget-object v0, p3, v1

    .line 180
    .local v0, option:Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 181
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 182
    const-string v2, "auth.1A"

    invoke-static {v2}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0           #option:Ljava/lang/String;
    :cond_a
    iput-object p3, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    .line 191
    iput p4, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    .line 192
    iput p2, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    .line 193
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->prompt:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method public getDefaultOption()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->defaultOption:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->messageType:I

    return v0
.end method

.method public getOptionType()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    return v0
.end method

.method public getOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->selection:I

    return v0
.end method

.method public setSelectedIndex(I)V
    .locals 3
    .parameter "selection"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 222
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->options:[Ljava/lang/String;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 223
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->selection:I

    .line 251
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 226
    const-string v1, "auth.1B"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->optionType:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_2
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ConfirmationCallback;->selection:I

    goto :goto_0

    .line 231
    :pswitch_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 233
    const-string v1, "auth.19"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 239
    const-string v1, "auth.19"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_2

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 245
    const-string v1, "auth.19"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
