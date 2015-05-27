.class Lo/zc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zc$1;,
        Lo/zc$if;
    }
.end annotation


# instance fields
.field private final bra:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<Lo/zd;>;"
        }
    .end annotation
.end field

.field private final brb:Lo/zc$if;

.field private brc:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/zc;->bra:Ljava/util/concurrent/BlockingQueue;

    .line 26
    new-instance v0, Lo/zc$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/zc$if;-><init>(Lo/zc;Lo/zc$1;)V

    iput-object v0, p0, Lo/zc;->brb:Lo/zc$if;

    .line 87
    return-void
.end method

.method static synthetic ˊ(Lo/zc;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/zc;->bra:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 36
    iget-object v0, p0, Lo/zc;->brb:Lo/zc$if;

    invoke-virtual {v0}, Lo/zc$if;->kill()V

    .line 37
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5

    .line 40
    iget-object v0, p0, Lo/zc;->brc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "ChatMan"

    const-string v1, "join another room=%s while still on room=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lo/zc;->brc:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "join room "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lo/zc;->brc:Ljava/lang/String;

    .line 46
    invoke-static {p4}, Lo/anw;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "ChatMan"

    const-string v1, "no endpoint, chatman is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lo/zc;->bra:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lo/zd$if;

    invoke-direct {v1, p1, p2, p3, p4}, Lo/zd$if;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    const-string v0, "ChatMan"

    const-string v1, "unexpected queue joinroom failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_2
    return-void
.end method

.method public ˋ(Lo/ant;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lo/zc;->brc:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "ChatMan"

    const-string v1, "send message before join a room"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 62
    :cond_0
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lo/zc;->bra:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 65
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queue full, drop message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lo/zc;->bra:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lo/zd$ˋ;

    invoke-direct {v1, p1}, Lo/zd$ˋ;-><init>(Lo/ant;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    const-string v0, "ChatMan"

    const-string v1, "unexpected queue send failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    return-void
.end method

.method public ḯ(Ljava/lang/String;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lo/zc;->brc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/zc;->brc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leave the wrong room="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 79
    :cond_1
    const-string v0, "ChatMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leave room "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lo/zc;->brc:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lo/zc;->bra:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lo/zd$ˊ;

    invoke-direct {v1, p1}, Lo/zd$ˊ;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    const-string v0, "ChatMan"

    const-string v1, "unexpected queue leaveroom failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    return-void
.end method
