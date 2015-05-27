.class Lo/ΐ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ز$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ΐ$1;,
        Lo/ΐ$ˊ;,
        Lo/ΐ$if;
    }
.end annotation


# static fields
.field private static final hH:Lo/ΐ$if;

.field private static final hI:Landroid/os/Handler;


# instance fields
.field private final eP:Ljava/util/concurrent/ExecutorService;

.field private final eQ:Ljava/util/concurrent/ExecutorService;

.field private final en:Z

.field private final hA:Lo/Γ;

.field private final hG:Lo/ﮆ;

.field private final hJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\u1606;>;"
        }
    .end annotation
.end field

.field private final hK:Lo/ΐ$if;

.field private hL:Lo/ڔ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0694<*>;"
        }
    .end annotation
.end field

.field private hM:Z

.field private hN:Ljava/lang/Exception;

.field private hO:Z

.field private hP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/\u1606;>;"
        }
    .end annotation
.end field

.field private hQ:Lo/ز;

.field private hR:Lo/ץ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u05e5<*>;"
        }
    .end annotation
.end field

.field private volatile hS:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<*>;"
        }
    .end annotation
.end field

.field private hb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lo/ΐ$if;

    invoke-direct {v0}, Lo/ΐ$if;-><init>()V

    sput-object v0, Lo/ΐ;->hH:Lo/ΐ$if;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo/ΐ$ˊ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/ΐ$ˊ;-><init>(Lo/ΐ$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lo/ΐ;->hI:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lo/ﮆ;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLo/Γ;)V
    .locals 7

    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    sget-object v6, Lo/ΐ;->hH:Lo/ΐ$if;

    invoke-direct/range {v0 .. v6}, Lo/ΐ;-><init>(Lo/ﮆ;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLo/Γ;Lo/ΐ$if;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lo/ﮆ;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLo/Γ;Lo/ΐ$if;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lo/ΐ;->hG:Lo/ﮆ;

    .line 59
    iput-object p2, p0, Lo/ΐ;->eQ:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-object p3, p0, Lo/ΐ;->eP:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-boolean p4, p0, Lo/ΐ;->en:Z

    .line 62
    iput-object p5, p0, Lo/ΐ;->hA:Lo/Γ;

    .line 63
    iput-object p6, p0, Lo/ΐ;->hK:Lo/ΐ$if;

    .line 64
    return-void
.end method

.method static synthetic ˊ(Lo/ΐ;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/ΐ;->จ()V

    return-void
.end method

.method static synthetic ˋ(Lo/ΐ;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/ΐ;->แ()V

    return-void
.end method

.method private ˎ(Lo/ᘆ;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lo/ΐ;->hP:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ΐ;->hP:Ljava/util/Set;

    .line 108
    :cond_0
    iget-object v0, p0, Lo/ΐ;->hP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private ˏ(Lo/ᘆ;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lo/ΐ;->hP:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ΐ;->hP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private จ()V
    .locals 5

    .line 141
    iget-boolean v0, p0, Lo/ΐ;->hb:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lo/ΐ;->hL:Lo/ڔ;

    invoke-interface {v0}, Lo/ڔ;->recycle()V

    .line 143
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iget-object v0, p0, Lo/ΐ;->hK:Lo/ΐ$if;

    iget-object v1, p0, Lo/ΐ;->hL:Lo/ڔ;

    iget-boolean v2, p0, Lo/ΐ;->en:Z

    invoke-virtual {v0, v1, v2}, Lo/ΐ$if;->ˊ(Lo/ڔ;Z)Lo/ץ;

    move-result-object v0

    iput-object v0, p0, Lo/ΐ;->hR:Lo/ץ;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ΐ;->hM:Z

    .line 152
    iget-object v0, p0, Lo/ΐ;->hR:Lo/ץ;

    invoke-virtual {v0}, Lo/ץ;->acquire()V

    .line 153
    iget-object v0, p0, Lo/ΐ;->hA:Lo/Γ;

    iget-object v1, p0, Lo/ΐ;->hG:Lo/ﮆ;

    iget-object v2, p0, Lo/ΐ;->hR:Lo/ץ;

    invoke-interface {v0, v1, v2}, Lo/Γ;->ˊ(Lo/ﮆ;Lo/ץ;)V

    .line 155
    iget-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᘆ;

    move-object v4, v0

    .line 156
    invoke-direct {p0, v4}, Lo/ΐ;->ˏ(Lo/ᘆ;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lo/ΐ;->hR:Lo/ץ;

    invoke-virtual {v0}, Lo/ץ;->acquire()V

    .line 158
    iget-object v0, p0, Lo/ΐ;->hR:Lo/ץ;

    invoke-interface {v4, v0}, Lo/ᘆ;->ʼ(Lo/ڔ;)V

    :cond_2
    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lo/ΐ;->hR:Lo/ץ;

    invoke-virtual {v0}, Lo/ץ;->release()V

    .line 163
    return-void
.end method

.method private แ()V
    .locals 5

    .line 172
    iget-boolean v0, p0, Lo/ΐ;->hb:Z

    if-eqz v0, :cond_0

    .line 173
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ΐ;->hO:Z

    .line 179
    iget-object v0, p0, Lo/ΐ;->hA:Lo/Γ;

    iget-object v1, p0, Lo/ΐ;->hG:Lo/ﮆ;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/Γ;->ˊ(Lo/ﮆ;Lo/ץ;)V

    .line 181
    iget-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᘆ;

    move-object v4, v0

    .line 182
    invoke-direct {p0, v4}, Lo/ΐ;->ˏ(Lo/ᘆ;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lo/ΐ;->hN:Ljava/lang/Exception;

    invoke-interface {v4, v0}, Lo/ᘆ;->ˊ(Ljava/lang/Exception;)V

    :cond_2
    goto :goto_0

    .line 186
    :cond_3
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    .line 117
    iget-boolean v0, p0, Lo/ΐ;->hO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ΐ;->hM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ΐ;->hb:Z

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lo/ΐ;->hQ:Lo/ز;

    invoke-virtual {v0}, Lo/ز;->cancel()V

    .line 121
    iget-object v2, p0, Lo/ΐ;->hS:Ljava/util/concurrent/Future;

    .line 122
    if-eqz v2, :cond_2

    .line 123
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 125
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ΐ;->hb:Z

    .line 126
    iget-object v0, p0, Lo/ΐ;->hA:Lo/Γ;

    iget-object v1, p0, Lo/ΐ;->hG:Lo/ﮆ;

    invoke-interface {v0, p0, v1}, Lo/Γ;->ˊ(Lo/ΐ;Lo/ﮆ;)V

    .line 127
    return-void
.end method

.method public ʼ(Lo/ڔ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<*>;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lo/ΐ;->hL:Lo/ڔ;

    .line 137
    sget-object v0, Lo/ΐ;->hI:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public ˊ(Ljava/lang/Exception;)V
    .locals 2

    .line 167
    iput-object p1, p0, Lo/ΐ;->hN:Ljava/lang/Exception;

    .line 168
    sget-object v0, Lo/ΐ;->hI:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public ˊ(Lo/ز;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lo/ΐ;->hQ:Lo/ز;

    .line 68
    iget-object v0, p0, Lo/ΐ;->eQ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lo/ΐ;->hS:Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method

.method public ˊ(Lo/ᘆ;)V
    .locals 1

    .line 77
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 78
    iget-boolean v0, p0, Lo/ΐ;->hM:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lo/ΐ;->hR:Lo/ץ;

    invoke-interface {p1, v0}, Lo/ᘆ;->ʼ(Lo/ڔ;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-boolean v0, p0, Lo/ΐ;->hO:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lo/ΐ;->hN:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lo/ᘆ;->ˊ(Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_0
    return-void
.end method

.method public ˋ(Lo/ز;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lo/ΐ;->eP:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lo/ΐ;->hS:Ljava/util/concurrent/Future;

    .line 74
    return-void
.end method

.method public ˋ(Lo/ᘆ;)V
    .locals 1

    .line 88
    invoke-static {}, Lo/ﾕ;->בּ()V

    .line 89
    iget-boolean v0, p0, Lo/ΐ;->hM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ΐ;->hO:Z

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lo/ΐ;->ˎ(Lo/ᘆ;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lo/ΐ;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lo/ΐ;->cancel()V

    .line 97
    :cond_2
    :goto_0
    return-void
.end method
