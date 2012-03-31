.class public final enum Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
.super Ljava/lang/Enum;
.source "ItemsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemsElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

.field public static final enum items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

.field public static final enum retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;


# instance fields
.field private att:Ljava/lang/String;

.field private elem:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    const-string v1, "items"

    .line 40
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const-string v3, "max_items"

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    .line 42
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    const-string v1, "retract"

    .line 46
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->RETRACT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const-string v3, "notify"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "nodeElement"
    .parameter "attribute"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->elem:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 53
    iput-object p4, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->att:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getElementAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->att:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->elem:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    return-object v0
.end method
