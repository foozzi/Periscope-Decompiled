.class public Lo/wq;
.super Lo/xl;
.source ""


# instance fields
.field public transient bnh:Ljava/lang/String;

.field public bos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation

    .annotation runtime Lo/go;
        value = "live"
    .end annotation
.end field

.field public bot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation

    .annotation runtime Lo/go;
        value = "replay"
    .end annotation
.end field

.field public bou:I
    .annotation runtime Lo/go;
        value = "n_web_watched"
    .end annotation
.end field

.field public bov:I
    .annotation runtime Lo/go;
        value = "n_replay_watched"
    .end annotation
.end field

.field public bow:I
    .annotation runtime Lo/go;
        value = "n_watched"
    .end annotation
.end field

.field public transient box:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/xl;-><init>()V

    return-void
.end method
