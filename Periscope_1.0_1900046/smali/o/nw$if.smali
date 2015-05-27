.class public Lo/nw$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private RA:Ljava/lang/String;

.field private RB:Ljava/lang/String;

.field private RC:Ljava/lang/String;

.field private RD:Ljava/lang/String;

.field private Ry:Ljava/lang/String;

.field private Rz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bU()Lo/nw;
    .locals 7

    .line 121
    new-instance v0, Lo/nw;

    iget-object v1, p0, Lo/nw$if;->Ry:Ljava/lang/String;

    iget-object v2, p0, Lo/nw$if;->Rz:Ljava/lang/String;

    iget-object v3, p0, Lo/nw$if;->RA:Ljava/lang/String;

    iget-object v4, p0, Lo/nw$if;->RB:Ljava/lang/String;

    iget-object v5, p0, Lo/nw$if;->RC:Ljava/lang/String;

    iget-object v6, p0, Lo/nw$if;->RD:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lo/nw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public וֹ(Ljava/lang/String;)Lo/nw$if;
    .locals 0

    .line 91
    iput-object p1, p0, Lo/nw$if;->Ry:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public ﹲ(Ljava/lang/String;)Lo/nw$if;
    .locals 0

    .line 96
    iput-object p1, p0, Lo/nw$if;->Rz:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public ﹷ(Ljava/lang/String;)Lo/nw$if;
    .locals 0

    .line 101
    iput-object p1, p0, Lo/nw$if;->RA:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public ﹻ(Ljava/lang/String;)Lo/nw$if;
    .locals 0

    .line 106
    iput-object p1, p0, Lo/nw$if;->RB:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public ﹼ(Ljava/lang/String;)Lo/nw$if;
    .locals 0

    .line 111
    iput-object p1, p0, Lo/nw$if;->RC:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public ﺑ(Ljava/lang/String;)Lo/nw$if;
    .locals 0

    .line 116
    iput-object p1, p0, Lo/nw$if;->RD:Ljava/lang/String;

    .line 117
    return-object p0
.end method
