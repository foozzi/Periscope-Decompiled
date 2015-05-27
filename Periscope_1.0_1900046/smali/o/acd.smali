.class public Lo/acd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final boq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/anv;>;"
        }
    .end annotation
.end field

.field public final bxu:I

.field private final bxv:Z


# direct methods
.method constructor <init>(Lo/fw;)V
    .locals 7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lo/fw;->r()Lo/fz;

    move-result-object v2

    .line 19
    const-string v0, "occupancy"

    invoke-virtual {v2, v0}, Lo/fz;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "occupancy"

    invoke-virtual {v2, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v0

    invoke-virtual {v0}, Lo/fw;->l()I

    move-result v0

    iput v0, p0, Lo/acd;->bxu:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/acd;->bxv:Z

    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lo/acd;->bxu:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/acd;->bxv:Z

    .line 26
    :goto_0
    const-string v0, "uuids"

    invoke-virtual {v2, v0}, Lo/fz;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    const-string v0, "uuids"

    invoke-virtual {v2, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v0

    invoke-virtual {v0}, Lo/fw;->s()Lo/ft;

    move-result-object v3

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lo/ft;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/acd;->boq:Ljava/util/List;

    .line 29
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lo/ft;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 30
    invoke-virtual {v3, v4}, Lo/ft;->ᴿ(I)Lo/fw;

    move-result-object v0

    invoke-virtual {v0}, Lo/fw;->r()Lo/fz;

    move-result-object v5

    .line 31
    const-string v0, "state"

    invoke-virtual {v5, v0}, Lo/fz;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "state"

    invoke-virtual {v5, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v6

    .line 33
    iget-object v0, p0, Lo/acd;->boq:Ljava/util/List;

    invoke-virtual {v6}, Lo/fw;->r()Lo/fz;

    move-result-object v1

    invoke-static {v1}, Lo/anv;->ˋ(Lo/fz;)Lo/anv;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 36
    :cond_2
    goto :goto_2

    .line 37
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lo/acd;->boq:Ljava/util/List;

    .line 39
    :goto_2
    return-void
.end method


# virtual methods
.method public wH()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/acd;->bxv:Z

    return v0
.end method
