.class Lo/abx$ˏ;
.super Lo/ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02cf"
.end annotation


# instance fields
.field private final bxo:Lo/acu;

.field private final bxp:Z


# direct methods
.method public constructor <init>(Lo/acu;Z)V
    .locals 0

    .line 336
    invoke-direct {p0}, Lo/ki;-><init>()V

    .line 337
    iput-object p1, p0, Lo/abx$ˏ;->bxo:Lo/acu;

    .line 338
    iput-boolean p2, p0, Lo/abx$ˏ;->bxp:Z

    .line 339
    return-void
.end method

.method private ˊ(Lo/fz;)Z
    .locals 4

    .line 343
    :try_start_0
    iget-object v0, p0, Lo/abx$ˏ;->bxo:Lo/acu;

    new-instance v1, Lo/ach;

    invoke-virtual {p1}, Lo/fz;->r()Lo/fz;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ach;-><init>(Lo/fz;)V

    invoke-virtual {v0, v1}, Lo/acu;->ˊ(Lo/act;)Z
    :try_end_0
    .catch Lo/acv; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 344
    :catch_0
    move-exception v3

    .line 345
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method private ͺ(Lo/ant;)Z
    .locals 2

    .line 351
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    sget-object v1, Lo/anu;->bNY:Lo/anu;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Lo/fw;Ljava/lang/String;)V
    .locals 0

    .line 356
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/lg;)V
    .locals 3

    .line 408
    invoke-super {p0, p1, p2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 409
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe errorCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public ˋ(Ljava/lang/String;Lo/fw;)V
    .locals 5

    .line 379
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe successCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Lo/fw;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received non-JSON object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 386
    :cond_0
    new-instance v3, Lo/acb;

    const-wide/16 v0, 0x0

    invoke-direct {v3, p1, p2, v0, v1}, Lo/acb;-><init>(Ljava/lang/String;Lo/fw;J)V

    .line 389
    iget-object v0, p0, Lo/abx$ˏ;->bxo:Lo/acu;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/abx$ˏ;->bxp:Z

    if-nez v0, :cond_1

    iget-object v0, v3, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iget-boolean v0, v0, Lo/anu;->bOl:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, v3, Lo/acb;->bxr:Lo/ant;

    invoke-direct {p0, v0}, Lo/abx$ˏ;->ͺ(Lo/ant;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    invoke-virtual {p2}, Lo/fw;->r()Lo/fz;

    move-result-object v4

    .line 392
    invoke-direct {p0, v4}, Lo/abx$ˏ;->ˊ(Lo/fz;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unverified message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void

    .line 397
    :cond_2
    iget-object v0, v3, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received for different channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void

    .line 403
    :cond_3
    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public ˎ(Ljava/lang/String;Lo/fw;)V
    .locals 3

    .line 360
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe connectCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v0

    new-instance v1, Lo/acc;

    invoke-direct {v1}, Lo/acc;-><init>()V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 362
    invoke-static {p1}, Lo/abx;->ᵡ(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public ˏ(Ljava/lang/String;Lo/fw;)V
    .locals 3

    .line 367
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe reconnectCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v0

    new-instance v1, Lo/ace;

    invoke-direct {v1}, Lo/ace;-><init>()V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public ᐝ(Ljava/lang/String;Lo/fw;)V
    .locals 3

    .line 373
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe disconnectCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v0

    new-instance v1, Lo/aca;

    invoke-direct {v1}, Lo/aca;-><init>()V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 375
    return-void
.end method
