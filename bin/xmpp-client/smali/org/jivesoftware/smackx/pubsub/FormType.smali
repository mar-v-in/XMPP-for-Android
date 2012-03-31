.class public final enum Lorg/jivesoftware/smackx/pubsub/FormType;
.super Ljava/lang/Enum;
.source "FormType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/FormType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/FormType;

.field public static final enum cancel:Lorg/jivesoftware/smackx/pubsub/FormType;

.field public static final enum form:Lorg/jivesoftware/smackx/pubsub/FormType;

.field public static final enum result:Lorg/jivesoftware/smackx/pubsub/FormType;

.field public static final enum submit:Lorg/jivesoftware/smackx/pubsub/FormType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/FormType;

    const-string v1, "form"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/FormType;->form:Lorg/jivesoftware/smackx/pubsub/FormType;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/FormType;

    const-string v1, "submit"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/FormType;->submit:Lorg/jivesoftware/smackx/pubsub/FormType;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/FormType;

    const-string v1, "cancel"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/FormType;->cancel:Lorg/jivesoftware/smackx/pubsub/FormType;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/FormType;

    const-string v1, "result"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/pubsub/FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/FormType;->result:Lorg/jivesoftware/smackx/pubsub/FormType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/FormType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/FormType;->form:Lorg/jivesoftware/smackx/pubsub/FormType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/FormType;->submit:Lorg/jivesoftware/smackx/pubsub/FormType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/FormType;->cancel:Lorg/jivesoftware/smackx/pubsub/FormType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/FormType;->result:Lorg/jivesoftware/smackx/pubsub/FormType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/FormType;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/FormType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/FormType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/FormType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/FormType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/FormType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/FormType;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/FormType;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/FormType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
