.class Lo/ʷ$ˏ;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ʷ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02cf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<Lo/\u05e5<*>;>;"
    }
.end annotation


# instance fields
.field private final hG:Lo/ﮆ;


# direct methods
.method public constructor <init>(Lo/ﮆ;Lo/ץ;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb86;Lo/\u05e5<*>;Ljava/lang/ref/ReferenceQueue<-Lo/\u05e5<*>;>;)V"
        }
    .end annotation

    .line 339
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 340
    iput-object p1, p0, Lo/ʷ$ˏ;->hG:Lo/ﮆ;

    .line 341
    return-void
.end method

.method static synthetic ˊ(Lo/ʷ$ˏ;)Lo/ﮆ;
    .locals 1

    .line 335
    iget-object v0, p0, Lo/ʷ$ˏ;->hG:Lo/ﮆ;

    return-object v0
.end method
