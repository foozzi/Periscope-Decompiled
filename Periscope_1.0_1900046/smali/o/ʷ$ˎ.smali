.class Lo/ʷ$ˎ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ʷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ce"
.end annotation


# instance fields
.field private final hF:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<Lo/\u05e5<*>;>;"
        }
    .end annotation
.end field

.field private final hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/\ufb86;Ljava/lang/ref/WeakReference<Lo/\u05e5<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Lo/\ufb86;Ljava/lang/ref/WeakReference<Lo/\u05e5<*>;>;>;Ljava/lang/ref/ReferenceQueue<Lo/\u05e5<*>;>;)V"
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lo/ʷ$ˎ;->hw:Ljava/util/Map;

    .line 352
    iput-object p2, p0, Lo/ʷ$ˎ;->hF:Ljava/lang/ref/ReferenceQueue;

    .line 353
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .line 357
    iget-object v0, p0, Lo/ʷ$ˎ;->hF:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lo/ʷ$ˏ;

    move-object v2, v0

    .line 358
    if-eqz v2, :cond_0

    .line 359
    iget-object v0, p0, Lo/ʷ$ˎ;->hw:Ljava/util/Map;

    invoke-static {v2}, Lo/ʷ$ˏ;->ˊ(Lo/ʷ$ˏ;)Lo/ﮆ;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
