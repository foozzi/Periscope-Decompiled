.class public Lo/ﭕ;
.super Landroid/database/DataSetObservable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﭕ$1;,
        Lo/ﭕ$ˏ;,
        Lo/ﭕ$if;,
        Lo/ﭕ$ˋ;,
        Lo/ﭕ$ˎ;,
        Lo/ﭕ$ˊ;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ᒑ:Ljava/lang/Object;

.field private static final ᒬ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Lo/\ufb55;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final ᒭ:Ljava/lang/Object;

.field private final ᒮ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\ufb55$if;>;"
        }
    .end annotation
.end field

.field private final ᒯ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\ufb55$\u02cb;>;"
        }
    .end annotation
.end field

.field private final ᒲ:Ljava/lang/String;

.field private ᒳ:Lo/ﭕ$ˊ;

.field private ᒶ:I

.field private ᒷ:Z

.field private ᒺ:Z

.field private ᓖ:Z

.field private ᓘ:Z

.field private ᓛ:Lo/ﭕ$ˎ;

.field private ṝ:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    const-class v0, Lo/ﭕ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ﭕ;->LOG_TAG:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ﭕ;->ᒑ:Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/ﭕ;->ᒬ:Ljava/util/Map;

    return-void
.end method

.method private ɪ()V
    .locals 4

    .line 570
    iget-boolean v0, p0, Lo/ﭕ;->ᒺ:Z

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    iget-boolean v0, p0, Lo/ﭕ;->ᓖ:Z

    if-nez v0, :cond_1

    .line 574
    return-void

    .line 576
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﭕ;->ᓖ:Z

    .line 577
    iget-object v0, p0, Lo/ﭕ;->ᒲ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 578
    new-instance v0, Lo/ﭕ$ˏ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ﭕ$ˏ;-><init>(Lo/ﭕ;Lo/ﭕ$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/ﭕ;->ᒲ:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lo/ʲ;->ˊ(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 581
    :cond_2
    return-void
.end method

.method private ɾ()V
    .locals 2

    .line 658
    invoke-direct {p0}, Lo/ﭕ;->ʟ()Z

    move-result v1

    .line 659
    invoke-direct {p0}, Lo/ﭕ;->ʰ()Z

    move-result v0

    or-int/2addr v1, v0

    .line 660
    invoke-direct {p0}, Lo/ﭕ;->Ϊ()V

    .line 661
    if-eqz v1, :cond_0

    .line 662
    invoke-direct {p0}, Lo/ﭕ;->ɿ()Z

    .line 663
    invoke-virtual {p0}, Lo/ﭕ;->notifyChanged()V

    .line 665
    :cond_0
    return-void
.end method

.method private ɿ()Z
    .locals 4

    .line 675
    iget-object v0, p0, Lo/ﭕ;->ᒳ:Lo/ﭕ$ˊ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﭕ;->ṝ:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lo/ﭕ;->ᒳ:Lo/ﭕ$ˊ;

    iget-object v1, p0, Lo/ﭕ;->ṝ:Landroid/content/Intent;

    iget-object v2, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    iget-object v3, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lo/ﭕ$ˊ;->ˊ(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 679
    const/4 v0, 0x1

    return v0

    .line 681
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ʟ()Z
    .locals 7

    .line 691
    iget-boolean v0, p0, Lo/ﭕ;->ᓘ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ﭕ;->ṝ:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﭕ;->ᓘ:Z

    .line 693
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 694
    iget-object v0, p0, Lo/ﭕ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lo/ﭕ;->ṝ:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 696
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 697
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 698
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    .line 699
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    new-instance v1, Lo/ﭕ$if;

    invoke-direct {v1, p0, v6}, Lo/ﭕ$if;-><init>(Lo/ﭕ;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 701
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 703
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ʰ()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lo/ﭕ;->ᒷ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ﭕ;->ᓖ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﭕ;->ᒲ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﭕ;->ᒷ:Z

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﭕ;->ᒺ:Z

    .line 718
    invoke-direct {p0}, Lo/ﭕ;->Ї()V

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ˊ(Lo/ﭕ;)Landroid/content/Context;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/ﭕ;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private ˊ(Lo/ﭕ$ˋ;)Z
    .locals 2

    .line 731
    iget-object v0, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 732
    if-eqz v1, :cond_0

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﭕ;->ᓖ:Z

    .line 734
    invoke-direct {p0}, Lo/ﭕ;->Ϊ()V

    .line 735
    invoke-direct {p0}, Lo/ﭕ;->ɪ()V

    .line 736
    invoke-direct {p0}, Lo/ﭕ;->ɿ()Z

    .line 737
    invoke-virtual {p0}, Lo/ﭕ;->notifyChanged()V

    .line 739
    :cond_0
    return v1
.end method

.method static synthetic ˊ(Lo/ﭕ;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lo/ﭕ;->ᒷ:Z

    return p1
.end method

.method static synthetic ˋ(Lo/ﭕ;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/ﭕ;->ᒲ:Ljava/lang/String;

    return-object v0
.end method

.method private Ϊ()V
    .locals 5

    .line 746
    iget-object v0, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lo/ﭕ;->ᒶ:I

    sub-int v2, v0, v1

    .line 747
    if-gtz v2, :cond_0

    .line 748
    return-void

    .line 750
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﭕ;->ᓖ:Z

    .line 751
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 752
    iget-object v0, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭕ$ˋ;

    move-object v4, v0

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    :cond_1
    return-void
.end method

.method private Ї()V
    .locals 15

    .line 964
    const/4 v3, 0x0

    .line 966
    :try_start_0
    iget-object v0, p0, Lo/ﭕ;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/ﭕ;->ᒲ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 972
    goto :goto_0

    .line 967
    :catch_0
    move-exception v4

    .line 971
    return-void

    .line 974
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 975
    const/4 v0, 0x0

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 977
    const/4 v5, 0x0

    .line 978
    :goto_1
    const/4 v0, 0x1

    if-eq v5, v0, :cond_0

    const/4 v0, 0x2

    if-eq v5, v0, :cond_0

    .line 979
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    .line 982
    :cond_0
    const-string v0, "historical-records"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_1
    iget-object v6, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    .line 988
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 991
    :cond_2
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 992
    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    .line 993
    goto :goto_3

    .line 995
    :cond_3
    const/4 v0, 0x3

    if-eq v5, v0, :cond_2

    const/4 v0, 0x4

    if-ne v5, v0, :cond_4

    .line 996
    goto :goto_2

    .line 998
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 999
    const-string v0, "historical-record"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1000
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share records file not well-formed."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_5
    const-string v0, "activity"

    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1004
    const-string v0, "time"

    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1006
    const-string v0, "weight"

    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 1008
    new-instance v12, Lo/ﭕ$ˋ;

    invoke-direct {v12, v8, v9, v10, v11}, Lo/ﭕ$ˋ;-><init>(Ljava/lang/String;JF)V

    .line 1009
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    goto :goto_2

    .line 1024
    :goto_3
    if-eqz v3, :cond_7

    .line 1026
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1029
    goto :goto_5

    .line 1027
    :catch_1
    move-exception v4

    .line 1029
    goto :goto_5

    .line 1019
    :catch_2
    move-exception v4

    .line 1020
    :try_start_3
    sget-object v0, Lo/ﭕ;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading historical recrod file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ﭕ;->ᒲ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1024
    if-eqz v3, :cond_7

    .line 1026
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1029
    goto :goto_5

    .line 1027
    :catch_3
    move-exception v4

    .line 1029
    goto :goto_5

    .line 1021
    :catch_4
    move-exception v4

    .line 1022
    :try_start_5
    sget-object v0, Lo/ﭕ;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading historical recrod file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ﭕ;->ᒲ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1024
    if-eqz v3, :cond_7

    .line 1026
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1029
    goto :goto_5

    .line 1027
    :catch_5
    move-exception v4

    .line 1029
    goto :goto_5

    .line 1024
    :catchall_0
    move-exception v13

    if-eqz v3, :cond_6

    .line 1026
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1029
    goto :goto_4

    .line 1027
    :catch_6
    move-exception v14

    .line 1029
    :cond_6
    :goto_4
    throw v13

    .line 1032
    :cond_7
    :goto_5
    return-void
.end method

.method static synthetic г()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lo/ﭕ;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getHistorySize()I
    .locals 3

    .line 645
    iget-object v1, p0, Lo/ﭕ;->ᒭ:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_0
    invoke-direct {p0}, Lo/ﭕ;->ɾ()V

    .line 647
    iget-object v0, p0, Lo/ﭕ;->ᒯ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 648
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public ȋ()I
    .locals 3

    .line 399
    iget-object v1, p0, Lo/ﭕ;->ᒭ:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    invoke-direct {p0}, Lo/ﭕ;->ɾ()V

    .line 401
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 402
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public ɨ()Landroid/content/pm/ResolveInfo;
    .locals 4

    .line 516
    iget-object v2, p0, Lo/ﭕ;->ᒭ:Ljava/lang/Object;

    monitor-enter v2

    .line 517
    :try_start_0
    invoke-direct {p0}, Lo/ﭕ;->ɾ()V

    .line 518
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭕ$if;

    iget-object v0, v0, Lo/ﭕ$if;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 521
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 522
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˊ(Landroid/content/pm/ResolveInfo;)I
    .locals 7

    .line 428
    iget-object v1, p0, Lo/ﭕ;->ᒭ:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    invoke-direct {p0}, Lo/ﭕ;->ɾ()V

    .line 430
    iget-object v2, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    .line 431
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 432
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 433
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭕ$if;

    move-object v5, v0

    .line 434
    iget-object v0, v5, Lo/ﭕ$if;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 435
    monitor-exit v1

    return v4

    .line 432
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_1
    monitor-exit v1

    const/4 v0, -0x1

    return v0

    .line 439
    :catchall_0
    move-exception v6

    monitor-exit v1

    throw v6
.end method

.method public ᗮ(I)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 414
    iget-object v1, p0, Lo/ﭕ;->ᒭ:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    invoke-direct {p0}, Lo/ﭕ;->ɾ()V

    .line 416
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭕ$if;

    iget-object v0, v0, Lo/ﭕ$if;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 417
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public ᴶ(I)Landroid/content/Intent;
    .locals 10

    .line 461
    iget-object v3, p0, Lo/ﭕ;->ᒭ:Ljava/lang/Object;

    monitor-enter v3

    .line 462
    :try_start_0
    iget-object v0, p0, Lo/ﭕ;->ṝ:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 463
    monitor-exit v3

    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lo/ﭕ;->ɾ()V

    .line 468
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭕ$if;

    move-object v4, v0

    .line 470
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v4, Lo/ﭕ$if;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Lo/ﭕ$if;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lo/ﭕ;->ṝ:Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 475
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 477
    iget-object v0, p0, Lo/ﭕ;->ᓛ:Lo/ﭕ$ˎ;

    if-eqz v0, :cond_1

    .line 479
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 480
    iget-object v0, p0, Lo/ﭕ;->ᓛ:Lo/ﭕ$ˎ;

    invoke-interface {v0, p0, v7}, Lo/ﭕ$ˎ;->ˊ(Lo/ﭕ;Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 482
    if-eqz v8, :cond_1

    .line 483
    monitor-exit v3

    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_1
    :try_start_2
    new-instance v7, Lo/ﭕ$ˋ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v0, v1, v2}, Lo/ﭕ$ˋ;-><init>(Landroid/content/ComponentName;JF)V

    .line 489
    invoke-direct {p0, v7}, Lo/ﭕ;->ˊ(Lo/ﭕ$ˋ;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    monitor-exit v3

    return-object v6

    .line 492
    :catchall_0
    move-exception v9

    monitor-exit v3

    throw v9
.end method

.method public ᴸ(I)V
    .locals 9

    .line 536
    iget-object v2, p0, Lo/ﭕ;->ᒭ:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_0
    invoke-direct {p0}, Lo/ﭕ;->ɾ()V

    .line 539
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭕ$if;

    move-object v3, v0

    .line 540
    iget-object v0, p0, Lo/ﭕ;->ᒮ:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭕ$if;

    move-object v4, v0

    .line 543
    if-eqz v4, :cond_0

    .line 545
    iget v0, v4, Lo/ﭕ$if;->weight:F

    iget v1, v3, Lo/ﭕ$if;->weight:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    add-float v5, v0, v1

    goto :goto_0

    .line 548
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 551
    :goto_0
    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v3, Lo/ﭕ$if;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v3, Lo/ﭕ$if;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v7, Lo/ﭕ$ˋ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v7, v6, v0, v1, v5}, Lo/ﭕ$ˋ;-><init>(Landroid/content/ComponentName;JF)V

    .line 556
    invoke-direct {p0, v7}, Lo/ﭕ;->ˊ(Lo/ﭕ$ˋ;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v2

    throw v8

    .line 558
    :goto_1
    return-void
.end method
