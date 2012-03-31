.class public final enum Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
.super Ljava/lang/Enum;
.source "SubscribeOptionFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum subscription_depth:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

.field public static final enum subscription_type:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "deliver"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 36
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "digest"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 46
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "digest_frequency"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 56
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "expire"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 65
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "include_body"

    invoke-direct {v0, v1, v7}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 73
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 75
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "show_values"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 82
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 84
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "subscription_type"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 91
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_type:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 93
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "subscription_depth"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_depth:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_type:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->subscription_depth:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    return-object v0
.end method

.method public static valueOfFromElement(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
    .locals 2
    .parameter "elementName"

    .prologue
    .line 102
    .line 103
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 102
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, portion:Ljava/lang/String;
    const-string v1, "show-values"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 108
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    move-result-object v1

    goto :goto_0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    if-ne p0, v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pubsub#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pubsub#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
