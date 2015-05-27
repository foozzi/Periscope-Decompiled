.class public Lo/abu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bwQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/acb;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/fw;)V
    .locals 8

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/abu;->bwQ:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p2}, Lo/fw;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event history not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void

    .line 23
    :cond_0
    invoke-virtual {p2}, Lo/fw;->s()Lo/ft;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ft;->ᴿ(I)Lo/fw;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lo/fw;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    const-string v0, "PsPubnub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event history, first elem not array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    invoke-virtual {v3}, Lo/fw;->s()Lo/ft;

    move-result-object v4

    .line 28
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Lo/ft;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 29
    invoke-virtual {v4, v5}, Lo/ft;->ᴿ(I)Lo/fw;

    move-result-object v0

    invoke-virtual {v0}, Lo/fw;->r()Lo/fz;

    move-result-object v6

    .line 30
    new-instance v7, Lo/acb;

    const-string v0, "message"

    invoke-virtual {v6, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v0

    const-string v1, "timetoken"

    invoke-virtual {v6, v1}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v1

    invoke-virtual {v1}, Lo/fw;->k()J

    move-result-wide v1

    invoke-direct {v7, p1, v0, v1, v2}, Lo/acb;-><init>(Ljava/lang/String;Lo/fw;J)V

    .line 32
    iget-object v0, p0, Lo/abu;->bwQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method


# virtual methods
.method public wC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/ArrayList<Lo/acb;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/abu;->bwQ:Ljava/util/ArrayList;

    return-object v0
.end method
