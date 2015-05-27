.class Lo/lp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private PG:Ljava/util/Hashtable;

.field PH:Lo/fz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Lo/fz;

    invoke-direct {v0}, Lo/fz;-><init>()V

    iput-object v0, p0, Lo/lp;->PH:Lo/fz;

    .line 22
    return-void
.end method


# virtual methods
.method public aH()Lo/lo;
    .locals 4

    .line 37
    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 42
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 43
    :goto_0
    return-object v1
.end method

.method public aI()[Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    invoke-static {v0}, Lo/li;->ʼ(Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aJ()Ljava/lang/String;
    .locals 3

    .line 56
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    const-string v1, ","

    const-string v2, "-pnpres"

    invoke-static {v0, v1, v2}, Lo/li;->ˊ(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    const-string v1, ","

    invoke-static {v0, v1}, Lo/li;->ˊ(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/lo;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    iget-object v1, p1, Lo/lo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public ˋ(Lo/lg;)V
    .locals 6

    .line 75
    iget-object v2, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 77
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lo;

    move-object v4, v0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, v4, Lo/lo;->PF:Z

    .line 80
    iget-object v0, v4, Lo/lo;->OE:Lo/ki;

    iget-object v1, v4, Lo/lo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v2

    throw v5

    .line 83
    :goto_1
    return-void
.end method

.method public ˋ([Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 86
    move-object v2, p1

    monitor-enter v2

    .line 87
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    array-length v0, p1

    if-ge v3, v0, :cond_2

    .line 88
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lo;

    move-object v4, v0

    .line 89
    if-eqz v4, :cond_1

    .line 90
    iget-boolean v0, v4, Lo/lo;->connected:Z

    if-nez v0, :cond_1

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, v4, Lo/lo;->connected:Z

    .line 92
    iget-boolean v0, v4, Lo/lo;->PE:Z

    if-nez v0, :cond_0

    .line 93
    new-instance v5, Lo/ft;

    invoke-direct {v5}, Lo/ft;-><init>()V

    .line 94
    new-instance v0, Lo/gc;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 95
    new-instance v0, Lo/gc;

    const-string v1, "Subscribe connected"

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 96
    new-instance v0, Lo/gc;

    invoke-direct {v0, p2}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 97
    iget-object v0, v4, Lo/lo;->OE:Lo/ki;

    iget-object v1, v4, Lo/lo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lo/ki;->ˎ(Ljava/lang/String;Lo/fw;)V

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v4, Lo/lo;->PE:Z

    .line 100
    new-instance v5, Lo/ft;

    invoke-direct {v5}, Lo/ft;-><init>()V

    .line 101
    new-instance v0, Lo/gc;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 102
    new-instance v0, Lo/gc;

    const-string v1, "Subscribe reconnected"

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 103
    new-instance v0, Lo/gc;

    invoke-direct {v0, p2}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 104
    iget-object v0, v4, Lo/lo;->OE:Lo/ki;

    iget-object v1, v4, Lo/lo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lo/ki;->ˏ(Ljava/lang/String;Lo/fw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 109
    :cond_2
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    .line 110
    :goto_2
    return-void
.end method

.method public ˎ([Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 117
    move-object v2, p1

    monitor-enter v2

    .line 118
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 119
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lo;

    move-object v4, v0

    .line 120
    if-eqz v4, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, v4, Lo/lo;->connected:Z

    .line 122
    iget-boolean v0, v4, Lo/lo;->PF:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v5, Lo/ft;

    invoke-direct {v5}, Lo/ft;-><init>()V

    .line 124
    new-instance v0, Lo/gc;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 125
    new-instance v0, Lo/gc;

    const-string v1, "Subscribe reconnected"

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 126
    new-instance v0, Lo/gc;

    invoke-direct {v0, p2}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 127
    iget-object v0, v4, Lo/lo;->OE:Lo/ki;

    iget-object v1, v4, Lo/lo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lo/ki;->ˏ(Ljava/lang/String;Lo/fw;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, v4, Lo/lo;->PF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    .line 133
    :goto_1
    return-void
.end method

.method public ˏ([Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 136
    move-object v2, p1

    monitor-enter v2

    .line 137
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 138
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lo;

    move-object v4, v0

    .line 139
    if-eqz v4, :cond_0

    .line 140
    iget-boolean v0, v4, Lo/lo;->connected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, v4, Lo/lo;->connected:Z

    .line 142
    new-instance v5, Lo/ft;

    invoke-direct {v5}, Lo/ft;-><init>()V

    .line 143
    new-instance v0, Lo/gc;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 144
    new-instance v0, Lo/gc;

    const-string v1, "Subscribe unable to connect"

    invoke-direct {v0, v1}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 145
    new-instance v0, Lo/gc;

    invoke-direct {v0, p2}, Lo/gc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lo/ft;->ˎ(Lo/fw;)V

    .line 146
    iget-object v0, v4, Lo/lo;->OE:Lo/ki;

    iget-object v1, v4, Lo/lo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lo/ki;->ᐝ(Ljava/lang/String;Lo/fw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    .line 152
    :goto_1
    return-void
.end method

.method public ᐢ(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public ᒻ(Ljava/lang/String;)Lo/lo;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/lp;->PG:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lo;

    return-object v0
.end method

.method public ᔅ(Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lo/lp;->aI()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/lp;->ˋ([Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public ᔉ(Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lo/lp;->aI()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/lp;->ˏ([Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public ᔊ(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lo/lp;->aI()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/lp;->ˎ([Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
