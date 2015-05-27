.class public Lo/aeh$ʼ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02bc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aeh<Lo/aad;>;"
    }
.end annotation


# instance fields
.field public final bnh:Ljava/lang/String;

.field public final bug:Z

.field private final bzu:Lo/aej;

.field public final nD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/aej;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lo/aeh$ʼ;->bzu:Lo/aej;

    .line 151
    iput-object p2, p0, Lo/aeh$ʼ;->bnh:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lo/aeh$ʼ;->nD:Ljava/lang/String;

    .line 153
    iput-boolean p4, p0, Lo/aeh$ʼ;->bug:Z

    .line 154
    return-void
.end method


# virtual methods
.method public xG()Lo/aad;
    .locals 1

    .line 163
    iget-object v0, p0, Lo/aeh$ʼ;->bzu:Lo/aej;

    invoke-virtual {v0}, Lo/aej;->tI()Lo/aad;

    move-result-object v0

    return-object v0
.end method

.method public xy()Lo/aeh$ʻ;
    .locals 1

    .line 158
    sget-object v0, Lo/aeh$ʻ;->bAs:Lo/aeh$ʻ;

    return-object v0
.end method
