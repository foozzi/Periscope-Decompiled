.class public Lo/xp;
.super Lo/xk;
.source ""


# instance fields
.field public YW:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "status"
    .end annotation
.end field

.field public bnh:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "broadcast_id"
    .end annotation
.end field

.field public boL:Z
    .annotation runtime Lo/go;
        value = "has_location"
    .end annotation
.end field

.field public bpM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation

    .annotation runtime Lo/go;
        value = "lock"
    .end annotation
.end field

.field public bpN:F
    .annotation runtime Lo/go;
        value = "lat"
    .end annotation
.end field

.field public bpO:F
    .annotation runtime Lo/go;
        value = "lng"
    .end annotation
.end field

.field public bpP:Z
    .annotation runtime Lo/go;
        value = "friend_chat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/xk;-><init>()V

    return-void
.end method
