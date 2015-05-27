.class Lo/aff;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/afi$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lo/aff;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ᐝ(Landroid/location/Location;)V
    .locals 6

    .line 444
    iget-object v0, p0, Lo/aff;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᐧ(Lo/aet;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aff;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ι(Lo/aet;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    const-string v0, "RTMP"

    const-string v1, "channel not set up yet!"

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lo/aff;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ι(Lo/aet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/akn;->AB()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lo/ant;->ˊ(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Double;Ljava/lang/Double;)Lo/ant;

    move-result-object v5

    .line 451
    iget-object v0, p0, Lo/aff;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᐨ(Lo/aet;)Lo/abr;

    move-result-object v0

    const-string v1, "sending message: lat, long"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lo/aff;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʾ(Lo/aet;)Lo/yz;

    move-result-object v0

    iget-object v1, p0, Lo/aff;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ᐧ(Lo/aet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lo/yz;->ˊ(Ljava/lang/String;Lo/ant;)V

    .line 453
    return-void
.end method
