.class Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/XMPPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorSpecification"
.end annotation


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/packet/XMPPError$Condition;",
            "Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I

.field private final type:Lorg/jivesoftware/smack/packet/XMPPError$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->errorSpecifications()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->instances:Ljava/util/Map;

    .line 231
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V
    .locals 0
    .parameter "condition"
    .parameter "type"
    .parameter "code"

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p3, p0, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->code:I

    .line 322
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->type:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 323
    return-void
.end method

.method private static errorSpecifications()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/packet/XMPPError$Condition;",
            "Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x197

    const/16 v9, 0x12e

    const/16 v8, 0x1f4

    const/16 v7, 0x194

    const/16 v6, 0x190

    .line 233
    new-instance v0, Ljava/util/HashMap;

    .line 234
    const/16 v1, 0x16

    .line 233
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 235
    .local v0, instances:Ljava/util/Map;,"Ljava/util/Map<Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;>;"
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->interna_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 236
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->interna_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 237
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->WAIT:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 236
    invoke-direct {v2, v3, v4, v8}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 235
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 239
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->AUTH:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x193

    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 241
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 242
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 241
    invoke-direct {v2, v3, v4, v6}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 240
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 244
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 245
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 244
    invoke-direct {v2, v3, v4, v7}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 243
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->conflict:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 247
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->conflict:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x199

    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 246
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 250
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 251
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 252
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x1f5

    .line 250
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 249
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->gone:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 254
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->gone:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    invoke-direct {v2, v3, v4, v9}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->jid_malformed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 256
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->jid_malformed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 257
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 256
    invoke-direct {v2, v3, v4, v6}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 259
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->no_acceptable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 260
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x196

    .line 259
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 258
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 262
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 263
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x195

    .line 262
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 261
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->not_authorized:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 265
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->not_authorized:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 266
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->AUTH:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x191

    .line 265
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 264
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->payment_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 268
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 269
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->payment_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->AUTH:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x192

    .line 268
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->recipient_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 271
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 272
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->recipient_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->WAIT:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 271
    invoke-direct {v2, v3, v4, v7}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 270
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->redirect:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 274
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->redirect:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    invoke-direct {v2, v3, v4, v9}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 273
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->registration_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 276
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 277
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->registration_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->AUTH:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 276
    invoke-direct {v2, v3, v4, v10}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 280
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 281
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_not_found:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 282
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 280
    invoke-direct {v2, v3, v4, v7}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 279
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 284
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 285
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->WAIT:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x1f8

    .line 284
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 283
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 287
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 288
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_error:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x1f6

    .line 287
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 290
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 291
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->WAIT:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 290
    invoke-direct {v2, v3, v4, v8}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 289
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 293
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 294
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x1f7

    .line 293
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 292
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->subscription_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 296
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 297
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->subscription_required:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->AUTH:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 296
    invoke-direct {v2, v3, v4, v10}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 295
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->undefined_condition:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 299
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 300
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->undefined_condition:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->WAIT:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 299
    invoke-direct {v2, v3, v4, v8}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 298
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 302
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    .line 303
    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->WAIT:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 302
    invoke-direct {v2, v3, v4, v6}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 301
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->request_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 305
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->request_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    .line 306
    sget-object v4, Lorg/jivesoftware/smack/packet/XMPPError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    const/16 v5, 0x198

    .line 305
    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Lorg/jivesoftware/smack/packet/XMPPError$Type;I)V

    .line 304
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-object v0
.end method

.method protected static specFor(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;
    .locals 1
    .parameter "condition"

    .prologue
    .line 312
    sget-object v0, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->code:I

    return v0
.end method

.method protected getType()Lorg/jivesoftware/smack/packet/XMPPError$Type;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->type:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    return-object v0
.end method
