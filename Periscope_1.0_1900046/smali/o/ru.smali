.class public abstract Lo/ru;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ru$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final Xv:Lo/rt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/rt<TT;>;"
        }
    .end annotation
.end field

.field protected final Xw:Lo/sc;

.field private final Xx:I

.field protected volatile Xy:J

.field protected final Xz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/sd;>;"
        }
    .end annotation
.end field

.field protected final dV:Landroid/content/Context;

.field protected final ql:Lo/qk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/rt;Lo/qk;Lo/sc;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/rt<TT;>;Lo/qk;Lo/sc;I)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/ru;->Xz:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ru;->dV:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lo/ru;->Xv:Lo/rt;

    .line 58
    iput-object p4, p0, Lo/ru;->Xw:Lo/sc;

    .line 59
    iput-object p3, p0, Lo/ru;->ql:Lo/qk;

    .line 61
    iget-object v0, p0, Lo/ru;->ql:Lo/qk;

    invoke-interface {v0}, Lo/qk;->cy()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ru;->Xy:J

    .line 63
    iput p5, p0, Lo/ru;->Xx:I

    .line 64
    return-void
.end method

.method private ᓪ(Ljava/lang/String;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lo/ru;->Xz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sd;

    move-object v3, v0

    .line 149
    :try_start_0
    invoke-interface {v3, p1}, Lo/sd;->ᔾ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_1

    .line 150
    :catch_0
    move-exception v4

    .line 151
    iget-object v0, p0, Lo/ru;->dV:Landroid/content/Context;

    const-string v1, "One of the roll over listeners threw an exception"

    invoke-static {v0, v1, v4}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_1
    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method private ﮂ(I)V
    .locals 6

    .line 116
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-virtual {p0}, Lo/ru;->ṭ()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lo/sc;->ᵓ(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v3}, Lo/sc;->di()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lo/ru;->ṭ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 123
    iget-object v0, p0, Lo/ru;->dV:Landroid/content/Context;

    const-string v1, "Fabric"

    const/4 v2, 0x4

    invoke-static {v0, v2, v1, v5}, Lo/qh;->ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lo/ru;->dc()Z

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public dc()Z
    .locals 8

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 91
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v0}, Lo/sc;->dj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lo/ru;->ḭ()Ljava/lang/String;

    move-result-object v7

    .line 93
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v0, v7}, Lo/sc;->ᕐ(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lo/ru;->dV:Landroid/content/Context;

    const-string v1, "Fabric"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "generated new file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v3, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lo/ru;->ql:Lo/qk;

    invoke-interface {v0}, Lo/qk;->cy()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ru;->Xy:J

    .line 102
    const/4 v6, 0x1

    .line 105
    :cond_0
    invoke-direct {p0, v7}, Lo/ru;->ᓪ(Ljava/lang/String;)V

    .line 106
    return v6
.end method

.method public df()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/io/File;>;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/sc;->ﮄ(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dg()V
    .locals 2

    .line 166
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    iget-object v1, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v1}, Lo/sc;->dk()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/sc;->ˍ(Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v0}, Lo/sc;->dl()V

    .line 169
    return-void
.end method

.method public dh()V
    .locals 14

    .line 172
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v0}, Lo/sc;->dk()Ljava/util/List;

    move-result-object v6

    .line 173
    invoke-virtual {p0}, Lo/ru;->ṫ()I

    move-result v7

    .line 175
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v7, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int v8, v0, v7

    .line 179
    iget-object v0, p0, Lo/ru;->dV:Landroid/content/Context;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    new-instance v9, Ljava/util/TreeSet;

    new-instance v0, Lo/rv;

    invoke-direct {v0, p0}, Lo/rv;-><init>(Lo/ru;)V

    invoke-direct {v9, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 192
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v11, v0

    .line 193
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ru;->ᓫ(Ljava/lang/String;)J

    move-result-wide v12

    .line 194
    new-instance v0, Lo/ru$if;

    invoke-direct {v0, v11, v12, v13}, Lo/ru$if;-><init>(Ljava/io/File;J)V

    invoke-virtual {v9, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_0

    .line 197
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ru$if;

    move-object v12, v0

    .line 199
    iget-object v0, v12, Lo/ru$if;->file:Ljava/io/File;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    goto :goto_2

    .line 202
    :cond_2
    goto :goto_1

    .line 204
    :cond_3
    :goto_2
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v0, v10}, Lo/sc;->ˍ(Ljava/util/List;)V

    .line 205
    return-void
.end method

.method public ˊ(Lo/sd;)V
    .locals 1

    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ru;->Xz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public ˌ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/io/File;>;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v0, p1}, Lo/sc;->ˍ(Ljava/util/List;)V

    .line 163
    return-void
.end method

.method public ᓫ(Ljava/lang/String;)J
    .locals 4

    .line 208
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 210
    array-length v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 213
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 214
    :catch_0
    move-exception v3

    .line 215
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ᖮ(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lo/ru;->Xv:Lo/rt;

    invoke-interface {v0, p1}, Lo/rt;->ᑊ(Ljava/lang/Object;)[B

    move-result-object v1

    .line 68
    array-length v0, v1

    invoke-direct {p0, v0}, Lo/ru;->ﮂ(I)V

    .line 70
    iget-object v0, p0, Lo/ru;->Xw:Lo/sc;

    invoke-interface {v0, v1}, Lo/sc;->ˍ([B)V

    .line 71
    return-void
.end method

.method protected abstract ḭ()Ljava/lang/String;
.end method

.method protected ṫ()I
    .locals 1

    .line 135
    iget v0, p0, Lo/ru;->Xx:I

    return v0
.end method

.method protected ṭ()I
    .locals 1

    .line 139
    const/16 v0, 0x1f40

    return v0
.end method
