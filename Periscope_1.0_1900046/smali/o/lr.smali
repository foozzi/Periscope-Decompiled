.class public Lo/lr;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static count:I


# instance fields
.field protected PJ:Ljava/util/Vector;

.field private PK:Lo/lq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    sput v0, Lo/lr;->count:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lo/lr;->PJ:Ljava/util/Vector;

    .line 85
    new-instance v0, Lo/ls;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/ls;-><init>(Lo/lr;I)V

    iput-object v0, p0, Lo/lr;->PK:Lo/lq;

    .line 92
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Lo/lq;)I
    .locals 5

    .line 102
    new-instance v4, Lo/lt;

    invoke-direct {v4, p1, p2}, Lo/lt;-><init>(Ljava/lang/String;Lo/lq;)V

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lo/lr;->count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lo/lr;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lo/lt;->ˊ(Ljava/lang/Thread;)V

    .line 104
    iget-object v0, p0, Lo/lr;->PJ:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting new worker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lo/lt;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4}, Lo/lt;->aL()V

    .line 107
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public ᒡ(II)V
    .locals 5

    .line 135
    iget-object v1, p0, Lo/lr;->PJ:Ljava/util/Vector;

    monitor-enter v1

    .line 136
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/lr;->PJ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 137
    iget-object v0, p0, Lo/lr;->PJ:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lt;

    move-object v3, v0

    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 139
    invoke-virtual {v3}, Lo/lt;->aN()Lo/lq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/lq;->ỉ(I)V

    .line 140
    invoke-virtual {v3}, Lo/lt;->aM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4

    .line 144
    :goto_1
    return-void
.end method

.method public ἰ(I)V
    .locals 5

    .line 111
    iget-object v1, p0, Lo/lr;->PJ:Ljava/util/Vector;

    monitor-enter v1

    .line 112
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/lr;->PJ:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 113
    iget-object v0, p0, Lo/lr;->PJ:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lt;

    move-object v3, v0

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 115
    iget-object v0, p0, Lo/lr;->PK:Lo/lq;

    invoke-virtual {v3, v0}, Lo/lt;->ˊ(Lo/lq;)V

    .line 116
    invoke-virtual {v3}, Lo/lt;->aO()V

    .line 117
    invoke-virtual {v3}, Lo/lt;->aM()V

    .line 118
    iget-object v0, p0, Lo/lr;->PJ:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4

    .line 122
    :goto_1
    return-void
.end method
