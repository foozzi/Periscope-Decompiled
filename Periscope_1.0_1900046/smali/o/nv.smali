.class Lo/nv;
.super Lo/rs;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/rs<Lo/nz;>;"
    }
.end annotation


# instance fields
.field private final px:Lo/sg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lo/oa;Lo/ny;Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lo/rs;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lo/ru;)V

    .line 17
    iput-object p5, p0, Lo/nv;->px:Lo/sg;

    .line 19
    iget v0, p4, Lo/ny;->RM:I

    invoke-virtual {p0, v0}, Lo/nv;->ﭙ(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public Ḭ()Lo/sg;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/nv;->px:Lo/sg;

    return-object v0
.end method
