.class public final enum Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;
.super Ljava/lang/Enum;
.source "ConfigureNodeFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

.field public static final enum type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "access_model"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "body_xslt"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "collection"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 57
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "dataform_xslt"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "deliver_payloads"

    invoke-direct {v0, v1, v7}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 77
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "itemreply"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 86
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "children_association_policy"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 93
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 95
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "children_association_whitelist"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 102
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 104
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "children"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 111
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 113
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "children_max"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 123
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "max_items"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 130
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 132
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "max_payload_size"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 139
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 141
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "node_type"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 148
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 150
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "notify_config"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 157
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 159
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "notify_delete"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 166
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 168
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "notify_retract"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 175
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 177
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "persist_items"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 185
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 187
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "presence_based_delivery"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 194
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 196
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "publish_model"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 203
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 205
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "replyroom"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 212
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 214
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "replyto"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 221
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 223
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "roster_groups_allowed"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 230
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 232
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "subscribe"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 239
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 241
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "title"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 248
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 250
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    const-string v1, "type"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;-><init>(Ljava/lang/String;I)V

    .line 258
    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    .line 28
    const/16 v0, 0x19

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->access_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->body_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->collection:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->dataform_xslt:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->deliver_payloads:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->itemreply:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_policy:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_association_whitelist:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->children_max:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->max_payload_size:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_config:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_delete:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->notify_retract:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->persist_items:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->presence_based_delivery:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->publish_model:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyroom:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->replyto:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->roster_groups_allowed:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->subscribe:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->title:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->ENUM$VALUES:[Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFieldName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pubsub#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
