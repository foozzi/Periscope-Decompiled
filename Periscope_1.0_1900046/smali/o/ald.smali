.class public Lo/ald;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bKG:Lo/aky;

.field private bKn:I

.field private final bKr:Lo/ala;

.field private bLA:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/Integer;Lo/akv;>;"
        }
    .end annotation
.end field

.field private bLB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/Integer;Lo/aku;>;"
        }
    .end annotation
.end field

.field private bLC:Lo/aku;

.field private final bLD:I

.field bLE:[B

.field private bLF:I

.field private bLG:I

.field private bLH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/alc;>;"
        }
    .end annotation
.end field

.field private final bLy:I

.field private bLz:I


# direct methods
.method public constructor <init>(Lo/ala;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x80

    iput v0, p0, Lo/ald;->bLy:I

    .line 15
    const/16 v0, 0x80

    iput v0, p0, Lo/ald;->bLz:I

    .line 16
    const/16 v0, 0x80

    iput v0, p0, Lo/ald;->bKn:I

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ald;->bLA:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ald;->bLB:Ljava/util/HashMap;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ald;->bLC:Lo/aku;

    .line 23
    const/16 v0, 0xf

    iput v0, p0, Lo/ald;->bLD:I

    .line 24
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ald;->bLE:[B

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lo/ald;->bLF:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lo/ald;->bLG:I

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/ald;->bLH:Ljava/util/List;

    .line 28
    new-instance v0, Lo/aky;

    invoke-direct {v0}, Lo/aky;-><init>()V

    iput-object v0, p0, Lo/ald;->bKG:Lo/aky;

    .line 32
    iput-object p1, p0, Lo/ald;->bKr:Lo/ala;

    .line 33
    return-void
.end method

.method private ᔁ(I)Lo/aku;
    .locals 3

    .line 160
    iget-object v0, p0, Lo/ald;->bLB:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aku;

    move-object v2, v0

    .line 161
    if-nez v2, :cond_0

    .line 163
    new-instance v2, Lo/aku;

    iget v0, p0, Lo/ald;->bLz:I

    invoke-direct {v2, p1, v0, p0}, Lo/aku;-><init>(IILo/ald;)V

    .line 164
    iget-object v0, p0, Lo/ald;->bLB:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    return-object v2
.end method


# virtual methods
.method public Bf()I
    .locals 2

    .line 75
    iget-object v0, p0, Lo/ald;->bLC:Lo/aku;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lo/ald;->bLC:Lo/aku;

    invoke-virtual {v0}, Lo/aku;->Bf()I

    move-result v0

    return v0

    .line 79
    :cond_0
    iget v0, p0, Lo/ald;->bLG:I

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_1
    iget v0, p0, Lo/ald;->bLF:I

    iget v1, p0, Lo/ald;->bLG:I

    if-ge v0, v1, :cond_2

    .line 85
    iget v0, p0, Lo/ald;->bLG:I

    iget v1, p0, Lo/ald;->bLF:I

    sub-int/2addr v0, v1

    return v0

    .line 88
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lo/ald;->bLG:I

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized ˎ(Lo/alc;)V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lo/alc;->Bs()Lo/akz;

    move-result-object v1

    .line 58
    iget-object v0, p0, Lo/ald;->bLH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lo/ald;->bKG:Lo/aky;

    invoke-virtual {v0, v1}, Lo/aky;->ˋ(Lo/akz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ᐝ(Lo/alc;)Z
    .locals 3

    .line 64
    iget-object v0, p0, Lo/ald;->bLA:Ljava/util/HashMap;

    invoke-virtual {p1}, Lo/alc;->Bp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akv;

    move-object v2, v0

    .line 65
    if-nez v2, :cond_0

    .line 67
    new-instance v2, Lo/akv;

    invoke-virtual {p1}, Lo/alc;->Bp()I

    move-result v0

    iget v1, p0, Lo/ald;->bKn:I

    invoke-direct {v2, v0, v1}, Lo/akv;-><init>(II)V

    .line 68
    iget-object v0, p0, Lo/ald;->bLA:Ljava/util/HashMap;

    invoke-virtual {p1}, Lo/alc;->Bp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    iget-object v0, p0, Lo/ald;->bKr:Lo/ala;

    invoke-virtual {v2, p1, v0}, Lo/akv;->ˊ(Lo/alc;Lo/ala;)Z

    move-result v0

    return v0
.end method

.method public ᓶ(I)V
    .locals 3

    .line 171
    iput p1, p0, Lo/ald;->bLz:I

    .line 172
    iget-object v0, p0, Lo/ald;->bLB:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aku;

    move-object v2, v0

    .line 174
    invoke-virtual {v2, p1}, Lo/aku;->ᓶ(I)V

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public ᓷ(I)V
    .locals 3

    .line 180
    iput p1, p0, Lo/ald;->bKn:I

    .line 181
    iget-object v0, p0, Lo/ald;->bLA:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akv;

    move-object v2, v0

    .line 183
    invoke-virtual {v2, p1}, Lo/akv;->ᓷ(I)V

    .line 184
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public declared-synchronized ᵔ(IIII)Lo/alc;
    .locals 4

    monitor-enter p0

    .line 37
    const/4 v2, 0x0

    .line 38
    :try_start_0
    iget-object v0, p0, Lo/ald;->bLH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lo/ald;->bLH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/alc;

    move-object v2, v0

    .line 41
    invoke-virtual {v2, p1, p2, p3}, Lo/alc;->ˮ(III)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Lo/alc;

    invoke-direct {v2, p1, p2, p3}, Lo/alc;-><init>(III)V

    .line 47
    :goto_0
    if-lez p4, :cond_1

    .line 49
    iget-object v0, p0, Lo/ald;->bKG:Lo/aky;

    invoke-virtual {v0, p4}, Lo/aky;->ᓽ(I)Lo/akz;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lo/alc;->ˎ(Lo/akz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public יּ([BII)Lo/alc;
    .locals 6

    .line 94
    invoke-virtual {p0}, Lo/ald;->Bf()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lo/ald;->bLC:Lo/aku;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lo/ald;->bLC:Lo/aku;

    invoke-virtual {v0, p1, p2, p3}, Lo/aku;->ᵕ([BII)Lo/alc;

    move-result-object v3

    .line 101
    iget-object v0, p0, Lo/ald;->bLC:Lo/aku;

    invoke-virtual {v0}, Lo/aku;->Be()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ald;->bLC:Lo/aku;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lo/ald;->bLG:I

    .line 106
    :cond_1
    return-object v3

    .line 108
    :cond_2
    iget v0, p0, Lo/ald;->bLG:I

    if-nez v0, :cond_5

    .line 109
    iget-object v0, p0, Lo/ald;->bLE:[B

    move v1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lo/ald;->bLF:I

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lo/ald;->bLG:I

    .line 112
    iget-object v0, p0, Lo/ald;->bLE:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_3

    .line 113
    iget v0, p0, Lo/ald;->bLG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ald;->bLG:I

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lo/ald;->bLE:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 115
    iget v0, p0, Lo/ald;->bLG:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/ald;->bLG:I

    .line 117
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/ald;->bLE:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shr-int/lit8 v3, v0, 0x6

    .line 118
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 120
    :pswitch_0
    iget v0, p0, Lo/ald;->bLG:I

    add-int/lit8 v0, v0, 0xb

    iput v0, p0, Lo/ald;->bLG:I

    .line 121
    goto :goto_1

    .line 123
    :pswitch_1
    iget v0, p0, Lo/ald;->bLG:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lo/ald;->bLG:I

    .line 124
    goto :goto_1

    .line 126
    :pswitch_2
    iget v0, p0, Lo/ald;->bLG:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lo/ald;->bLG:I

    .line 127
    .line 131
    :goto_1
    :pswitch_3
    goto :goto_2

    :cond_5
    iget v0, p0, Lo/ald;->bLF:I

    iget v1, p0, Lo/ald;->bLG:I

    if-ge v0, v1, :cond_6

    .line 133
    iget v0, p0, Lo/ald;->bLG:I

    iget v1, p0, Lo/ald;->bLF:I

    sub-int v3, v0, v1

    .line 134
    iget-object v0, p0, Lo/ald;->bLE:[B

    iget v1, p0, Lo/ald;->bLF:I

    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget v0, p0, Lo/ald;->bLF:I

    add-int/2addr v0, v3

    iput v0, p0, Lo/ald;->bLF:I

    .line 138
    :cond_6
    :goto_2
    iget v0, p0, Lo/ald;->bLF:I

    iget v1, p0, Lo/ald;->bLG:I

    if-ne v0, v1, :cond_9

    .line 140
    iget-object v0, p0, Lo/ald;->bLE:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shr-int/lit8 v3, v0, 0x6

    .line 141
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lo/ald;->bLE:[B

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v5, v0, 0x3f

    .line 143
    if-nez v5, :cond_7

    .line 145
    iget-object v0, p0, Lo/ald;->bLE:[B

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    add-int/lit8 v5, v0, 0x40

    goto :goto_3

    .line 147
    :cond_7
    const/4 v0, 0x1

    if-ne v5, v0, :cond_8

    .line 149
    iget-object v0, p0, Lo/ald;->bLE:[B

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    shl-int/lit8 v5, v0, 0x8

    .line 150
    iget-object v0, p0, Lo/ald;->bLE:[B

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    add-int/2addr v5, v0

    .line 152
    :cond_8
    :goto_3
    invoke-direct {p0, v5}, Lo/ald;->ᔁ(I)Lo/aku;

    move-result-object v0

    iput-object v0, p0, Lo/ald;->bLC:Lo/aku;

    .line 153
    iget-object v0, p0, Lo/ald;->bLC:Lo/aku;

    iget-object v1, p0, Lo/ald;->bLE:[B

    iget v2, p0, Lo/ald;->bLF:I

    sub-int/2addr v2, v4

    invoke-virtual {v0, v1, v4, v2, v3}, Lo/aku;->ᐝ([BIII)Lo/alc;

    move-result-object v0

    return-object v0

    .line 155
    :cond_9
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
