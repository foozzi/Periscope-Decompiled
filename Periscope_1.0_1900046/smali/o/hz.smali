.class public final Lo/hz;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/util/Date;>;"
    }
.end annotation


# static fields
.field public static final LA:Lo/gl;


# instance fields
.field private final JM:Ljava/text/DateFormat;

.field private final JN:Ljava/text/DateFormat;

.field private final JO:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lo/ia;

    invoke-direct {v0}, Lo/ia;-><init>()V

    sput-object v0, Lo/hz;->LA:Lo/gl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Lo/gk;-><init>()V

    .line 49
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lo/hz;->JM:Ljava/text/DateFormat;

    .line 51
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lo/hz;->JN:Ljava/text/DateFormat;

    .line 53
    invoke-static {}, Lo/hz;->I()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lo/hz;->JO:Ljava/text/DateFormat;

    return-void
.end method

.method private static I()Ljava/text/DateFormat;
    .locals 3

    .line 56
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 57
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 58
    return-object v2
.end method

.method private declared-synchronized ᒡ(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lo/hz;->JN:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 72
    :catch_0
    move-exception v1

    .line 75
    :try_start_1
    iget-object v0, p0, Lo/hz;->JM:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 76
    :catch_1
    move-exception v1

    .line 79
    :try_start_2
    iget-object v0, p0, Lo/hz;->JO:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 80
    :catch_2
    move-exception v1

    .line 81
    :try_start_3
    new-instance v0, Lo/gf;

    invoke-direct {v0, p1, v1}, Lo/gf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public ʽ(Lo/jz;)Ljava/util/Date;
    .locals 2

    .line 62
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/hz;->ᒡ(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 41
    move-object v0, p2

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, p1, v0}, Lo/hz;->ˊ(Lo/kc;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized ˊ(Lo/kc;Ljava/util/Date;)V
    .locals 2

    monitor-enter p0

    .line 86
    if-nez p2, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lo/kc;->T()Lo/kc;

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lo/hz;->JM:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0, p1}, Lo/hz;->ʽ(Lo/jz;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
