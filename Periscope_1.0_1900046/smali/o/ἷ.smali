.class public final Lo/ἷ;
.super Lo/ゞ;
.source ""


# instance fields
.field public final xK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\uff5a;>;"
        }
    .end annotation
.end field

.field public final yj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\ufee1;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/List<Lo/\uff5a;>;Ljava/util/List<Lo/\ufee1;>;)V"
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ゞ;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p2, p0, Lo/ἷ;->xK:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lo/ἷ;->yj:Ljava/util/List;

    .line 32
    return-void
.end method
