.class public Lo/ni$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ca"
.end annotation


# instance fields
.field public Rc:Z

.field public Rd:J

.field private final Re:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lo/ni$ˊ;->Re:Ljava/util/Calendar;

    .line 125
    return-void
.end method

.method private ᐝ(JJ)Z
    .locals 6

    .line 144
    iget-object v0, p0, Lo/ni$ˊ;->Re:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 145
    iget-object v0, p0, Lo/ni$ˊ;->Re:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 146
    iget-object v0, p0, Lo/ni$ˊ;->Re:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 148
    iget-object v0, p0, Lo/ni$ˊ;->Re:Ljava/util/Calendar;

    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    iget-object v0, p0, Lo/ni$ˊ;->Re:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 150
    iget-object v0, p0, Lo/ni$ˊ;->Re:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 152
    if-ne v2, v4, :cond_0

    if-ne v3, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized ᵣ(J)Z
    .locals 6

    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v0, p0, Lo/ni$ˊ;->Rd:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 130
    :goto_0
    iget-wide v0, p0, Lo/ni$ˊ;->Rd:J

    invoke-direct {p0, p1, p2, v0, v1}, Lo/ni$ˊ;->ᐝ(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 132
    :goto_1
    iget-boolean v0, p0, Lo/ni$ˊ;->Rc:Z

    if-nez v0, :cond_3

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 133
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ni$ˊ;->Rc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 135
    :cond_3
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized יִ(J)V
    .locals 1

    monitor-enter p0

    .line 139
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/ni$ˊ;->Rc:Z

    .line 140
    iput-wide p1, p0, Lo/ni$ˊ;->Rd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
