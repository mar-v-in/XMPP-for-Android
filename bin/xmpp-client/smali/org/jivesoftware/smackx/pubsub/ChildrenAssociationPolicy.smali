.class public final enum Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;
.super Ljava/lang/Enum;
.source "ChildrenAssociationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

.field public static final enum all:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

.field public static final enum owners:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

.field public static final enum whitelist:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    const-string v1, "all"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->all:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    const-string v1, "owners"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->owners:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    .line 34
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    const-string v1, "whitelist"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->whitelist:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->all:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->owners:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->whitelist:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
