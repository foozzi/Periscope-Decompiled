.class public Lo/abr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abs;


# instance fields
.field private final bwO:Ljava/lang/StringBuffer;

.field private final bwP:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lo/abr;->bwO:Ljava/lang/StringBuffer;

    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lo/abr;->bwP:Ljava/lang/StringBuffer;

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lo/abr;->bwO:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    return-void
.end method

.method private declared-synchronized wB()V
    .locals 3

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lo/abr;->bwP:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lo/abr;->bwO:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 44
    iget-object v0, p0, Lo/abr;->bwO:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 6

    .line 14
    invoke-static {p1}, Lo/anw;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 18
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-direct {p0, v5}, Lo/abr;->append(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public wA()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/abr;->wB()V

    .line 32
    return-void
.end method

.method public wz()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/abr;->bwO:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized ᒾ(Z)V
    .locals 2

    monitor-enter p0

    .line 35
    if-nez p1, :cond_0

    .line 36
    :try_start_0
    iget-object v0, p0, Lo/abr;->bwP:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lo/abr;->bwO:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 37
    iget-object v0, p0, Lo/abr;->bwO:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lo/abr;->bwP:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 39
    :cond_0
    iget-object v0, p0, Lo/abr;->bwP:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
