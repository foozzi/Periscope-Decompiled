.class abstract Lo/lk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/lk$if;
    }
.end annotation


# static fields
.field private static Py:I

.field private static count:I


# instance fields
.field protected volatile NR:I

.field protected volatile NS:I

.field protected NU:Ljava/util/Hashtable;

.field protected PA:[Lo/lu;

.field protected Pz:Ljava/util/Vector;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    const/4 v0, 0x1

    sput v0, Lo/lk;->Py:I

    .line 135
    const/4 v0, 0x0

    sput v0, Lo/lk;->count:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lo/lk;->Pz:Ljava/util/Vector;

    .line 163
    iput p2, p0, Lo/lk;->NS:I

    .line 164
    iput p3, p0, Lo/lk;->NR:I

    .line 165
    sget v0, Lo/lk;->Py:I

    invoke-direct {p0, v0, p1}, Lo/lk;->ˏ(ILjava/lang/String;)V

    .line 166
    return-void
.end method

.method private ˏ(ILjava/lang/String;)V
    .locals 8

    .line 144
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 145
    const/4 p1, 0x1

    .line 147
    :cond_0
    iput-object p2, p0, Lo/lk;->name:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lo/lk;->NU:Ljava/util/Hashtable;

    .line 149
    new-array v0, p1, [Lo/lu;

    iput-object v0, p0, Lo/lk;->PA:[Lo/lu;

    .line 151
    iget-object v4, p0, Lo/lk;->PA:[Lo/lu;

    monitor-enter v4

    .line 152
    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lo/lk;->al()Lo/lu;

    move-result-object v6

    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lo/lk;->count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lo/lk;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lo/lu;->ˊ(Ljava/lang/Thread;)V

    .line 155
    iget-object v0, p0, Lo/lk;->PA:[Lo/lu;

    aput-object v6, v0, v5

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting new worker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/lk;->PA:[Lo/lu;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lo/lu;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v6}, Lo/lu;->aL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    :cond_1
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v4

    throw v7

    .line 160
    :goto_1
    return-void
.end method


# virtual methods
.method public aF()V
    .locals 8

    .line 189
    iget-object v4, p0, Lo/lk;->PA:[Lo/lu;

    monitor-enter v4

    .line 190
    const/4 v5, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/lk;->PA:[Lo/lu;

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending DIE to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/lk;->PA:[Lo/lu;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lo/lu;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lo/lk;->PA:[Lo/lu;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lo/lu;->aO()V

    .line 193
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/lk$if;

    iget-object v2, p0, Lo/lk;->PA:[Lo/lu;

    aget-object v2, v2, v5

    invoke-direct {v1, p0, v2}, Lo/lk$if;-><init>(Lo/lk;Lo/lu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    iget-object v0, p0, Lo/lk;->PA:[Lo/lu;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lo/lu;->aM()V

    .line 195
    invoke-virtual {p0}, Lo/lk;->al()Lo/lu;

    move-result-object v6

    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/lk;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lo/lk;->count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lo/lk;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lo/lu;->ˊ(Ljava/lang/Thread;)V

    .line 197
    iget-object v0, p0, Lo/lk;->PA:[Lo/lu;

    aput-object v6, v0, v5

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting new worker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/lk;->PA:[Lo/lu;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lo/lu;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v6}, Lo/lu;->aL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 201
    :cond_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v4

    throw v7

    .line 202
    :goto_1
    return-void
.end method

.method public aG()V
    .locals 0

    .line 211
    invoke-virtual {p0}, Lo/lk;->ar()V

    .line 212
    invoke-virtual {p0}, Lo/lk;->aF()V

    .line 213
    return-void
.end method

.method public abstract al()Lo/lu;
.end method

.method public abstract ar()V
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lo/lk;->NU:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public ˊ(Lo/kn;)V
    .locals 4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queued : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lo/kn;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ﹾ(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lo/lk;->Pz:Ljava/util/Vector;

    monitor-enter v2

    .line 223
    :try_start_0
    iget-object v0, p0, Lo/lk;->Pz:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lo/lk;->Pz:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 226
    :goto_0
    return-void
.end method
