.class public final enum Lorg/jivesoftware/smackx/pubsub/PublishModel;
.super Ljava/lang/Enum;
.source "PublishModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/PublishModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/PublishModel;

.field public static final enum open:Lorg/jivesoftware/smackx/pubsub/PublishModel;

.field public static final enum publishers:Lorg/jivesoftware/smackx/pubsub/PublishModel;

.field public static final enum subscribers:Lorg/jivesoftware/smackx/pubsub/PublishModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;

    const-string v1, "publishers"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PublishModel;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;->publishers:Lorg/jivesoftware/smackx/pubsub/PublishModel;

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;

    const-string v1, "subscribers"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/PublishModel;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;->subscribers:Lorg/jivesoftware/smackx/pubsub/PublishModel;

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;

    const-string v1, "open"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/PublishModel;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;->open:Lorg/jivesoftware/smackx/pubsub/PublishModel;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/PublishModel;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PublishModel;->publishers:Lorg/jivesoftware/smackx/pubsub/PublishModel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PublishModel;->subscribers:Lorg/jivesoftware/smackx/pubsub/PublishModel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PublishModel;->open:Lorg/jivesoftware/smackx/pubsub/PublishModel;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/PublishModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PublishModel;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/PublishModel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PublishModel;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/PublishModel;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/PublishModel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
