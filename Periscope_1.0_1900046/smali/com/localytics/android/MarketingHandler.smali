.class final Lcom/localytics/android/MarketingHandler;
.super Lcom/localytics/android/BaseHandler;
.source ""

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingHandler$MessagingListenersSet;
    }
.end annotation


# static fields
.field private static final AB_ATTRIBUTE:Ljava/lang/String; = "ab"

.field private static final ACTION_ATTRIBUTE:Ljava/lang/String; = "Action"

.field private static final APP_CONTEXT_ATTRIBUTE:Ljava/lang/String; = "App Context"

.field private static final CAMPAIGN_ID_ATTRIBUTE:Ljava/lang/String; = "Campaign ID"

.field private static final CREATIVE_DISPLAYED_ATTRIBUTE:Ljava/lang/String; = "Creative Displayed"

.field private static final CREATIVE_ID_ATTRIBUTE:Ljava/lang/String; = "Creative ID"

.field private static final CREATIVE_TYPE_ATTRIBUTE:Ljava/lang/String; = "Creative Type"

.field private static final JS_STRINGS_THAT_MEAN_NULL:Ljava/util/List;

.field private static final MARKETING_RULEEVENTS_SORT_ORDER:Ljava/lang/String;

.field private static final MARKETING_RULES_SORT_ORDER:Ljava/lang/String;

.field private static final MESSAGE_DELETE_MARKETING_MESSAGE_RESOURCES:I = 0xca

.field private static final MESSAGE_HANDLE_PUSH_RECEIVED:I = 0xcc

.field private static final MESSAGE_MARKETING_MESSAGE_TRIGGER:I = 0xc9

.field private static final MESSAGE_SHOW_MARKETING_TEST:I = 0xcb

.field private static final PROJECTION_MARKETING_RULE_RECORD:[Ljava/lang/String;

.field private static final PUSH_API_URL_TEMPLATE:Ljava/lang/String; = "http://pushapi.localytics.com/push_test?platform=android&type=prod&campaign=%s&creative=%s&token=%s&install_id=%s&client_ts=%s"

.field private static final PUSH_NOTIFICATIONS_ENABLED_ATTRIBUTE:Ljava/lang/String; = "Push Notifications Enabled"

.field private static final PUSH_OPENED_EVENT:Ljava/lang/String; = "Localytics Push Opened"

.field private static final PUSH_RECEIVED_EVENT:Ljava/lang/String; = "Localytics Push Received"

.field private static final SELECTION_DISPLAYED_MARKETING_MESSAGE:Ljava/lang/String;

.field private static final SELECTION_MARKETING_RULEEVENTS:Ljava/lang/String;

.field private static final SELECTION_MARKETING_RULES:Ljava/lang/String;

.field private static final SELECTION_UPDATE_MARKETING_RULE:Ljava/lang/String;


# instance fields
.field private isMidDisplayingInApp:Z

.field private lastMarketingMessagesHash:I

.field private mFragmentManager:Lo/ˈ;

.field private sessionStartMarketingMessageShown:Z

.field private testCampaignsListAdapter:Lcom/localytics/android/MarketingRulesAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    const-string v0, "%s > ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "expiration"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MarketingHandler;->SELECTION_MARKETING_RULES:Ljava/lang/String;

    .line 95
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "event_name"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MarketingHandler;->SELECTION_MARKETING_RULEEVENTS:Ljava/lang/String;

    .line 101
    const-string v0, "CAST(%s AS TEXT)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MarketingHandler;->MARKETING_RULES_SORT_ORDER:Ljava/lang/String;

    .line 107
    const-string v0, "CAST(%s as TEXT)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "rule_id_ref"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MarketingHandler;->MARKETING_RULEEVENTS_SORT_ORDER:Ljava/lang/String;

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "version"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/MarketingHandler;->PROJECTION_MARKETING_RULE_RECORD:[Ljava/lang/String;

    .line 109
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MarketingHandler;->SELECTION_UPDATE_MARKETING_RULE:Ljava/lang/String;

    .line 110
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "campaign_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MarketingHandler;->SELECTION_DISPLAYED_MARKETING_MESSAGE:Ljava/lang/String;

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "undefined"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "null"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "nil"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\"\""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\'\'"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/MarketingHandler;->JS_STRINGS_THAT_MEAN_NULL:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 130
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->sessionStartMarketingMessageShown:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->testCampaignsListAdapter:Lcom/localytics/android/MarketingRulesAdapter;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->isMidDisplayingInApp:Z

    .line 131
    const-string v0, "In-app"

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->siloName:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/localytics/android/MarketingHandler$MessagingListenersSet;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingHandler$1;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->doesRetry:Z

    .line 136
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingHandler;->_createLocalyticsDirectory(Landroid/content/Context;)Z

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 139
    invoke-static {p0}, Lcom/localytics/android/Localytics;->addAnalyticsListener(Lcom/localytics/android/AnalyticsListener;)V

    .line 140
    return-void
.end method

.method private __showMarketingTest()V
    .locals 7

    .line 1358
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 1360
    return-void

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    const-string v1, "marketing_test_mode_button"

    invoke-virtual {v0, v1}, Lo/ˈ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    const-string v1, "marketing_test_mode_list"

    invoke-virtual {v0, v1}, Lo/ˈ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1365
    :cond_1
    return-void

    .line 1368
    :cond_2
    invoke-static {}, Lcom/localytics/android/TestModeButton;->newInstance()Lcom/localytics/android/TestModeButton;

    move-result-object v2

    .line 1369
    invoke-static {}, Lcom/localytics/android/TestModeListView;->newInstance()Lcom/localytics/android/TestModeListView;

    move-result-object v3

    .line 1370
    new-instance v4, Lcom/localytics/android/MarketingRulesAdapter;

    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-direct {v4, v0, p0}, Lcom/localytics/android/MarketingRulesAdapter;-><init>(Landroid/content/Context;Lcom/localytics/android/MarketingHandler;)V

    .line 1372
    invoke-virtual {v3, v4}, Lcom/localytics/android/TestModeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1377
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1379
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$10;

    invoke-direct {v1, p0, v4, v3}, Lcom/localytics/android/MarketingHandler$10;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingRulesAdapter;Lcom/localytics/android/TestModeListView;)V

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    invoke-virtual {v2, v5}, Lcom/localytics/android/TestModeButton;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeButton;

    .line 1392
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    const-string v1, "marketing_test_mode_button"

    invoke-virtual {v2, v0, v1}, Lcom/localytics/android/TestModeButton;->show(Lo/ˈ;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    invoke-virtual {v0}, Lo/ˈ;->executePendingTransactions()Z

    .line 1403
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 1406
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$11;

    invoke-direct {v1, p0, v2}, Lcom/localytics/android/MarketingHandler$11;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/TestModeButton;)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$12;

    invoke-direct {v1, p0, v4}, Lcom/localytics/android/MarketingHandler$12;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingRulesAdapter;)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$13;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$13;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$14;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$14;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$15;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$15;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    invoke-virtual {v3, v6}, Lcom/localytics/android/TestModeListView;->setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeListView;

    .line 1568
    return-void
.end method

.method private _bindRuleToEvents(JLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JLjava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_ruleevent"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "rule_id_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 943
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 945
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 946
    const-string v0, "event_name"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string v0, "rule_id_ref"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 948
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_ruleevent"

    invoke-virtual {v0, v1, v8}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 949
    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method

.method private _createLocalyticsDirectory(Landroid/content/Context;)Z
    .locals 3

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, ".localytics"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private _decompressZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 2272
    const/4 v4, 0x0

    .line 2275
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 2279
    const/16 v0, 0x2000

    new-array v6, v0, [B

    .line 2281
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2285
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2287
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    const-string v0, "Could not create directory %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 2292
    :cond_0
    goto :goto_2

    .line 2295
    :cond_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2298
    :goto_1
    array-length v0, v6

    const/4 v1, 0x0

    invoke-virtual {v4, v6, v1, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    move v9, v0

    if-lez v0, :cond_2

    .line 2300
    const/4 v0, 0x0

    invoke-virtual {v8, v6, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 2303
    :cond_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 2304
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    :goto_2
    goto/16 :goto_0

    .line 2317
    :cond_3
    const/4 v0, 0x0

    if-eq v0, v4, :cond_4

    .line 2319
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2320
    const/4 v4, 0x0

    .line 2327
    :cond_4
    goto :goto_5

    .line 2323
    :catch_0
    move-exception v5

    .line 2325
    const-string v0, "Caught IOException"

    invoke-static {v0, v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    const/4 v0, 0x0

    return v0

    .line 2308
    :catch_1
    move-exception v5

    .line 2310
    const-string v0, "Caught IOException"

    :try_start_2
    invoke-static {v0, v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2311
    const/4 v6, 0x0

    .line 2317
    const/4 v0, 0x0

    if-eq v0, v4, :cond_5

    .line 2319
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2320
    const/4 v4, 0x0

    .line 2327
    :cond_5
    goto :goto_3

    .line 2323
    :catch_2
    move-exception v7

    .line 2325
    const-string v0, "Caught IOException"

    invoke-static {v0, v7}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    const/4 v0, 0x0

    return v0

    :goto_3
    return v6

    .line 2315
    :catchall_0
    move-exception v10

    .line 2317
    const/4 v0, 0x0

    if-eq v0, v4, :cond_6

    .line 2319
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2320
    const/4 v4, 0x0

    .line 2327
    :cond_6
    goto :goto_4

    .line 2323
    :catch_3
    move-exception v11

    .line 2325
    const-string v0, "Caught IOException"

    invoke-static {v0, v11}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    const/4 v0, 0x0

    return v0

    :goto_4
    throw v10

    .line 2330
    :goto_5
    const/4 v0, 0x1

    return v0
.end method

.method private _destroyLocalMarketingMessage(Lcom/localytics/android/MarketingMessage;)V
    .locals 15

    .line 786
    const-string v0, "campaign_id"

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 787
    invoke-direct {p0, v6}, Lcom/localytics/android/MarketingHandler;->_getRuleIdFromCampaignId(I)I

    move-result v7

    .line 792
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->_getConditionIdFromRuleId(J)[J

    move-result-object v8

    .line 793
    move-object v9, v8

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-wide v12, v9, v11

    .line 795
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_condition_values"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "condition_id_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 793
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "rule_id_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_ruleevent"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "rule_id_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 806
    const-string v0, "base_path"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 807
    const/4 v0, 0x0

    if-eq v0, v9, :cond_3

    .line 809
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    .line 814
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 812
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 818
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 820
    const-string v0, "Delete %s failed."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 823
    :cond_2
    new-instance v11, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    const-string v0, "Delete %s failed."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_3
    goto :goto_2

    .line 830
    :catch_0
    move-exception v6

    .line 832
    const-class v0, Ljava/lang/RuntimeException;

    const-string v1, "Localytics library threw an uncaught exception"

    invoke-static {v0, v1, v6}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    .line 834
    :goto_2
    return-void
.end method

.method private _doesCreativeExist(IZ)Z
    .locals 6

    .line 2249
    if-eqz p2, :cond_0

    .line 2251
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/localytics/android/MarketingHandler;->_getZipFileDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "amp_rule_%d.zip"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2255
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_getUnzipFileDirPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2258
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private _getConditionIdFromRuleId(J)[J
    .locals 11

    .line 1118
    const/4 v7, 0x0

    .line 1120
    const/4 v8, 0x0

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "rule_id_ref"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 1124
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [J

    .line 1126
    const/4 v9, 0x0

    .line 1127
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    move v0, v9

    add-int/lit8 v9, v9, 0x1

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1134
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 1136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1137
    const/4 v8, 0x0

    goto :goto_1

    .line 1134
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v8, :cond_1

    .line 1136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1137
    const/4 v8, 0x0

    :cond_1
    throw v10

    .line 1140
    :cond_2
    :goto_1
    return-object v7
.end method

.method private _getJavaScriptClientCallbacks(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
        }
    .end annotation

    .line 1757
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1763
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$20;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$20;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    invoke-static {}, Lcom/localytics/android/Localytics;->getIdentifiers()Ljava/util/Map;

    move-result-object v3

    .line 1862
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$21;

    invoke-direct {v1, p0, v3}, Lcom/localytics/android/MarketingHandler$21;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/util/Map;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1890
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge v5, v0, :cond_0

    .line 1894
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/localytics/android/Localytics;->getCustomDimension(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1899
    goto :goto_1

    .line 1896
    :catch_0
    move-exception v6

    .line 1898
    const-string v0, "[JavaScriptClient]: Failed to get custom dimension"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 1890
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1901
    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$22;

    invoke-direct {v1, p0, v4}, Lcom/localytics/android/MarketingHandler$22;-><init>(Lcom/localytics/android/MarketingHandler;Lorg/json/JSONObject;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$23;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/MarketingHandler$23;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/util/Map;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$24;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$24;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    return-object v2
.end method

.method private _getMarketingConditionValues(I)Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Ljava/util/Vector<Ljava/lang/String;>;"
        }
    .end annotation

    .line 2341
    const/4 v7, 0x0

    .line 2343
    const/4 v8, 0x0

    .line 2346
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_condition_values"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "value"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "condition_id_ref"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 2347
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2349
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2351
    const/4 v0, 0x0

    if-ne v0, v7, :cond_0

    .line 2353
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 2356
    :cond_0
    invoke-virtual {v7, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2357
    goto :goto_0

    .line 2361
    :cond_1
    const/4 v0, 0x0

    if-eq v0, v8, :cond_3

    .line 2363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2364
    const/4 v8, 0x0

    goto :goto_1

    .line 2361
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 2363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2364
    const/4 v8, 0x0

    :cond_2
    throw v10

    .line 2368
    :cond_3
    :goto_1
    return-object v7
.end method

.method private _getMarketingConditions(I)Ljava/util/Vector;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Ljava/util/Vector<Lcom/localytics/android/MarketingCondition;>;"
        }
    .end annotation

    .line 2107
    const/4 v6, 0x0

    .line 2110
    const/4 v7, 0x0

    .line 2113
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "rule_id_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 2114
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2116
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2117
    const-string v0, "attribute_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2118
    const-string v0, "operator"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2119
    invoke-direct {p0, v8}, Lcom/localytics/android/MarketingHandler;->_getMarketingConditionValues(I)Ljava/util/Vector;

    move-result-object v11

    .line 2121
    const/4 v0, 0x0

    if-ne v0, v6, :cond_0

    .line 2123
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2126
    :cond_0
    new-instance v12, Lcom/localytics/android/MarketingCondition;

    invoke-direct {v12, v9, v10, v11}, Lcom/localytics/android/MarketingCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    .line 2127
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/localytics/android/MarketingCondition;->setPackageName(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v6, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    goto :goto_0

    .line 2133
    :cond_1
    const/4 v0, 0x0

    if-eq v0, v7, :cond_3

    .line 2135
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2136
    const/4 v7, 0x0

    goto :goto_1

    .line 2133
    :catchall_0
    move-exception v13

    const/4 v0, 0x0

    if-eq v0, v7, :cond_2

    .line 2135
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2136
    const/4 v7, 0x0

    :cond_2
    throw v13

    .line 2140
    :cond_3
    :goto_1
    return-object v6
.end method

.method private _getMarketingMessageMaps(Ljava/lang/String;)Ljava/util/Vector;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)Ljava/util/Vector<Lcom/localytics/android/MarketingMessage;>;"
        }
    .end annotation

    .line 1578
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1580
    const/4 v7, 0x0

    .line 1581
    const/4 v8, 0x0

    .line 1584
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    sget-object v3, Lcom/localytics/android/MarketingHandler;->SELECTION_MARKETING_RULES:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v4, v2

    sget-object v5, Lcom/localytics/android/MarketingHandler;->MARKETING_RULES_SORT_ORDER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_ruleevent"

    sget-object v3, Lcom/localytics/android/MarketingHandler;->SELECTION_MARKETING_RULEEVENTS:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    sget-object v5, Lcom/localytics/android/MarketingHandler;->MARKETING_RULEEVENTS_SORT_ORDER:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 1590
    const/4 v10, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 1592
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1594
    const-string v0, "rule_id_ref"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1595
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_1

    .line 1597
    invoke-interface {v7, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1599
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1600
    if-ne v13, v11, :cond_0

    .line 1602
    new-instance v14, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v14}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 1604
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    const-string v0, "campaign_id"

    const-string v1, "campaign_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    const-string v0, "expiration"

    const-string v1, "expiration"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    const-string v0, "display_seconds"

    const-string v1, "display_seconds"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    const-string v0, "display_session"

    const-string v1, "display_session"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    const-string v0, "version"

    const-string v1, "version"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    const-string v0, "phone_location"

    const-string v1, "phone_location"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    const-string v0, "phone_size_width"

    const-string v1, "phone_size_width"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    const-string v0, "phone_size_height"

    const-string v1, "phone_size_height"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    const-string v0, "tablet_location"

    const-string v1, "tablet_location"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    const-string v0, "tablet_size_width"

    const-string v1, "tablet_size_width"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    const-string v0, "tablet_size_height"

    const-string v1, "tablet_size_height"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    const-string v0, "time_to_display"

    const-string v1, "time_to_display"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const-string v0, "internet_required"

    const-string v1, "internet_required"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    const-string v0, "ab_test"

    const-string v1, "ab_test"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-string v0, "rule_name"

    const-string v1, "rule_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string v0, "location"

    const-string v1, "location"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    const-string v0, "devices"

    const-string v1, "devices"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    invoke-virtual {v6, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1595
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1626
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1631
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v7, :cond_3

    .line 1633
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1634
    const/4 v7, 0x0

    .line 1637
    :cond_3
    const/4 v0, 0x0

    if-eq v0, v8, :cond_6

    .line 1639
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1640
    const/4 v8, 0x0

    goto :goto_2

    .line 1631
    :catchall_0
    move-exception v15

    const/4 v0, 0x0

    if-eq v0, v7, :cond_4

    .line 1633
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1634
    const/4 v7, 0x0

    .line 1637
    :cond_4
    const/4 v0, 0x0

    if-eq v0, v8, :cond_5

    .line 1639
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1640
    const/4 v8, 0x0

    :cond_5
    throw v15

    .line 1644
    :cond_6
    :goto_2
    return-object v6
.end method

.method private _getRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;
    .locals 3

    .line 2220
    const-string v0, "devices"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 2222
    const-string v0, "tablet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2224
    const-string v0, "tablet_location"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 2226
    :cond_0
    const-string v0, "both"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2228
    const-string v0, "phone_location"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 2232
    :cond_1
    const-string v0, "phone_location"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 2235
    :goto_0
    return-object v1
.end method

.method private _getRuleIdFromCampaignId(I)I
    .locals 10

    .line 1089
    const/4 v7, 0x0

    .line 1090
    const/4 v8, 0x0

    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "campaign_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 1094
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1101
    :cond_0
    const/4 v0, 0x0

    if-eq v0, v8, :cond_2

    .line 1103
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1104
    const/4 v8, 0x0

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v9

    const/4 v0, 0x0

    if-eq v0, v8, :cond_1

    .line 1103
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1104
    const/4 v8, 0x0

    :cond_1
    throw v9

    .line 1107
    :cond_2
    :goto_0
    return v7
.end method

.method private _getUnzipFileDirPath(I)Ljava/lang/String;
    .locals 7

    .line 2176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2184
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    const-string v0, ".localytics"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    sget-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    const-string v0, "marketing_rule_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2195
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2200
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2202
    const-string v0, "Could not create the directory %s for saving the decompressed file."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 2203
    const/4 v0, 0x0

    return-object v0

    .line 2207
    :cond_1
    return-object v5
.end method

.method private _getZipFileDirPath()Ljava/lang/String;
    .locals 2

    .line 2150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2158
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    const-string v0, ".localytics"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    sget-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _handlePushReceived(Landroid/content/Intent;)V
    .locals 16

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    if-nez v3, :cond_0

    .line 184
    const-string v0, "Ignoring message that aren\'t from Localytics."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 185
    return-void

    .line 190
    :cond_0
    const/4 v5, 0x0

    .line 193
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v0, "ca"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 200
    goto :goto_0

    .line 196
    :catch_0
    move-exception v6

    .line 198
    const-string v0, "Failed to get campaign id from payload, ignoring message"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 199
    return-void

    .line 202
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {}, Lcom/localytics/android/Localytics;->isPushDisabled()Z

    move-result v7

    .line 204
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 205
    :goto_1
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 208
    :goto_2
    const-string v0, "cr"

    :try_start_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 209
    const-string v0, "v"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 210
    const-string v0, "t"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 211
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    if-eqz v8, :cond_3

    .line 215
    const-string v12, "Alert"

    goto :goto_3

    .line 219
    :cond_3
    const-string v12, "Silent"

    .line 223
    :cond_4
    :goto_3
    const-string v13, "Not Available"

    .line 224
    invoke-static {}, Lcom/localytics/android/Localytics;->isAutoIntegrate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    invoke-static {}, Lcom/localytics/android/Localytics;->isAppInForeground()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    const-string v13, "Foreground"

    goto :goto_4

    .line 232
    :cond_5
    const-string v13, "Background"

    .line 237
    :cond_6
    :goto_4
    if-eqz v8, :cond_8

    .line 239
    if-eqz v7, :cond_7

    const-string v14, "No"

    goto :goto_5

    :cond_7
    const-string v14, "Yes"

    :goto_5
    goto :goto_6

    .line 243
    :cond_8
    const-string v14, "Not Applicable"

    .line 246
    :goto_6
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v0, "Campaign ID"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "Creative ID"

    invoke-virtual {v15, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "Creative Type"

    invoke-virtual {v15, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "Creative Displayed"

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "Push Notifications Enabled"

    if-eqz v7, :cond_9

    const-string v1, "No"

    goto :goto_7

    :cond_9
    const-string v1, "Yes"

    :goto_7
    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "App Context"

    invoke-virtual {v15, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "Schema Version - Client"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "Schema Version - Server"

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "x"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    .line 259
    const-string v0, "Localytics Push Received"

    invoke-static {v0, v15}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    invoke-static {}, Lcom/localytics/android/Localytics;->upload()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :cond_a
    goto :goto_8

    .line 263
    :catch_1
    move-exception v10

    .line 265
    const-string v0, "Failed to get campaign id or creative id from payload"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 268
    :goto_8
    if-nez v9, :cond_d

    .line 270
    if-eqz v7, :cond_b

    .line 272
    const-string v0, "Got push notification while push is disabled."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 275
    :cond_b
    if-nez v8, :cond_c

    .line 277
    const-string v0, "Got push notification without a message."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 279
    :cond_c
    return-void

    .line 283
    :cond_d
    const-string v10, ""

    .line 284
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getLocalyticsNotificationIcon()I

    move-result v11

    .line 287
    :try_start_2
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 288
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v10, v0

    .line 293
    goto :goto_9

    .line 290
    :catch_2
    move-exception v12

    .line 292
    const-string v0, "Failed to get application name, icon, or launch intent"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 296
    :goto_9
    new-instance v12, Landroid/content/Intent;

    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-class v1, Lcom/localytics/android/PushTrackingActivity;

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 298
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 300
    new-instance v0, Lo/ⁱ$ˎ;

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/ⁱ$ˎ;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Lo/ⁱ$ˎ;->ͺ(I)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v10}, Lo/ⁱ$ˎ;->ˋ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/ⁱ$ˎ;->ˎ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v13}, Lo/ⁱ$ˎ;->ˊ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ι(I)Lo/ⁱ$ˎ;

    move-result-object v0

    new-instance v1, Lo/ⁱ$ˋ;

    invoke-direct {v1}, Lo/ⁱ$ˋ;-><init>()V

    invoke-virtual {v1, v6}, Lo/ⁱ$ˋ;->ˊ(Ljava/lang/CharSequence;)Lo/ⁱ$ˋ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˊ(Lo/ⁱ$con;)Lo/ⁱ$ˎ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˋ(Z)Lo/ⁱ$ˎ;

    move-result-object v14

    .line 310
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v15, v0

    .line 311
    invoke-virtual {v14}, Lo/ⁱ$ˎ;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v15, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 312
    return-void
.end method

.method private _hasAMPMessageBeenDisplayed(I)Z
    .locals 11

    .line 620
    const/4 v7, 0x0

    .line 621
    const/4 v8, 0x0

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_displayed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "campaign_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/localytics/android/MarketingHandler;->SELECTION_DISPLAYED_MARKETING_MESSAGE:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 625
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v7, v0

    .line 633
    const/4 v0, 0x0

    if-eq v0, v8, :cond_1

    .line 635
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 627
    :catch_0
    move-exception v9

    .line 629
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    const/4 v0, 0x0

    if-eq v0, v8, :cond_1

    .line 635
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v10

    const/4 v0, 0x0

    if-eq v0, v8, :cond_0

    .line 635
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v10

    .line 639
    :cond_1
    :goto_0
    return v7
.end method

.method private _isConnectingToInternet()Z
    .locals 8

    .line 1970
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 1971
    const/4 v0, 0x0

    if-eq v0, v2, :cond_1

    .line 1973
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1974
    const/4 v0, 0x0

    if-eq v0, v3, :cond_1

    .line 1976
    move-object v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 1978
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    .line 1980
    const/4 v0, 0x1

    return v0

    .line 1976
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1985
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private _isMarketingMessageSatisfiedConditions(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/localytics/android/MarketingMessage;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Z"
        }
    .end annotation

    .line 1997
    const/4 v1, 0x1

    .line 2000
    const-string v0, "campaign_id"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2001
    invoke-direct {p0, v2}, Lcom/localytics/android/MarketingHandler;->_getRuleIdFromCampaignId(I)I

    move-result v3

    .line 2004
    invoke-direct {p0, v3}, Lcom/localytics/android/MarketingHandler;->_getMarketingConditions(I)Ljava/util/Vector;

    move-result-object v4

    .line 2007
    const/4 v0, 0x0

    if-eq v0, v4, :cond_1

    .line 2009
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCondition;

    move-object v6, v0

    .line 2011
    invoke-virtual {v6, p2}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByAttributes(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    const/4 v1, 0x0

    .line 2014
    goto :goto_1

    .line 2016
    :cond_0
    goto :goto_0

    .line 2019
    :cond_1
    :goto_1
    return v1
.end method

.method private _marketingTrigger(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 1180
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    return-void

    .line 1186
    :cond_0
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1188
    iget-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->sessionStartMarketingMessageShown:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    const-string v2, "AMP Loaded"

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->sessionStartMarketingMessageShown:Z

    goto :goto_0

    .line 1195
    :cond_1
    return-void

    .line 1200
    :cond_2
    move-object v2, p1

    .line 1204
    :goto_0
    invoke-direct {p0, v2}, Lcom/localytics/android/MarketingHandler;->_getMarketingMessageMaps(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 1205
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1207
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1209
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1210
    invoke-direct {p0, v4}, Lcom/localytics/android/MarketingHandler;->_getMarketingMessageMaps(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    .line 1215
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/localytics/android/MarketingHandler;->_retrieveDisplayingCandidate(Ljava/util/Vector;Ljava/util/Map;)Lcom/localytics/android/MarketingMessage;

    move-result-object v4

    .line 1217
    const/4 v0, 0x0

    if-ne v0, v4, :cond_4

    .line 1219
    return-void

    .line 1222
    :cond_4
    invoke-direct {p0, p2}, Lcom/localytics/android/MarketingHandler;->_getJavaScriptClientCallbacks(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 1223
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/MarketingHandler$8;

    invoke-direct {v1, p0, v4, v5}, Lcom/localytics/android/MarketingHandler$8;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1282
    return-void
.end method

.method private _parseMarketingMessage(Lcom/localytics/android/MarketingMessage;)Landroid/content/ContentValues;
    .locals 5

    .line 864
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 866
    const-string v0, "campaign_id"

    const-string v1, "campaign_id"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    const-string v0, "expiration"

    const-string v1, "expiration"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    const-string v0, "display_seconds"

    const-string v1, "display_seconds"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    const-string v0, "display_session"

    const-string v1, "display_session"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 870
    const-string v0, "version"

    const-string v1, "version"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v0, "phone_location"

    const-string v1, "phone_location"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v0, "phone_size"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 873
    const-string v0, "phone_size_width"

    const-string v1, "width"

    invoke-static {v3, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    const-string v0, "phone_size_height"

    const-string v1, "height"

    invoke-static {v3, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v0, "tablet_size"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 876
    const-string v0, "tablet_location"

    const-string v1, "tablet_location"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v0, "tablet_size_width"

    const-string v1, "width"

    invoke-static {v4, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v0, "tablet_size_height"

    const-string v1, "height"

    invoke-static {v4, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    const-string v0, "time_to_display"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    const-string v0, "internet_required"

    const-string v1, "internet_required"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    const-string v0, "ab_test"

    const-string v1, "ab"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v0, "rule_name"

    const-string v1, "rule_name"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v0, "location"

    const-string v1, "location"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v0, "devices"

    const-string v1, "devices"

    invoke-static {p1, v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-object v2
.end method

.method private _removeDeactivatedMarketingMessages(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;)V"
        }
    .end annotation

    .line 550
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v8, v0

    .line 555
    const-string v0, "campaign_id"

    invoke-static {v8, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    goto :goto_0

    .line 559
    :cond_0
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 560
    const/4 v8, 0x0

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    .line 565
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 567
    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 571
    const-string v0, "campaign_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 572
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    goto/16 :goto_2

    .line 577
    :cond_1
    new-instance v11, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v11}, Lcom/localytics/android/MarketingMessage;-><init>()V

    .line 579
    const-string v0, "_id"

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "campaign_id"

    const-string v1, "campaign_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v0, "expiration"

    const-string v1, "expiration"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v0, "display_seconds"

    const-string v1, "display_seconds"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v0, "display_session"

    const-string v1, "display_session"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string v0, "version"

    const-string v1, "version"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v0, "phone_location"

    const-string v1, "phone_location"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v0, "phone_size_width"

    const-string v1, "phone_size_width"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v0, "phone_size_height"

    const-string v1, "phone_size_height"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v0, "tablet_location"

    const-string v1, "tablet_location"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v0, "tablet_size_width"

    const-string v1, "tablet_size_width"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v0, "tablet_size_height"

    const-string v1, "tablet_size_height"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v0, "time_to_display"

    const-string v1, "time_to_display"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v0, "internet_required"

    const-string v1, "internet_required"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v0, "ab_test"

    const-string v1, "ab_test"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v0, "rule_name"

    const-string v1, "rule_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v0, "location"

    const-string v1, "location"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v0, "devices"

    const-string v1, "devices"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {v7, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 603
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v8, :cond_4

    .line 605
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 606
    const/4 v8, 0x0

    goto :goto_3

    .line 603
    :catchall_0
    move-exception v12

    const/4 v0, 0x0

    if-eq v0, v8, :cond_3

    .line 605
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 606
    const/4 v8, 0x0

    :cond_3
    throw v12

    .line 611
    :cond_4
    :goto_3
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v10, v0

    .line 613
    invoke-direct {p0, v10}, Lcom/localytics/android/MarketingHandler;->_destroyLocalMarketingMessage(Lcom/localytics/android/MarketingMessage;)V

    .line 614
    goto :goto_4

    .line 615
    :cond_5
    return-void
.end method

.method private _retrieveDisplayingCandidate(Ljava/util/Vector;Ljava/util/Map;)Lcom/localytics/android/MarketingMessage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Vector<Lcom/localytics/android/MarketingMessage;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/localytics/android/MarketingMessage;"
        }
    .end annotation

    .line 1658
    const/4 v2, 0x0

    .line 1660
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v4, v0

    .line 1663
    const-string v0, "internet_required"

    invoke-virtual {v4, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1664
    :goto_1
    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/localytics/android/MarketingHandler;->_isConnectingToInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1666
    goto :goto_0

    .line 1670
    :cond_1
    const/4 v0, 0x0

    if-eq v0, p2, :cond_2

    invoke-direct {p0, v4, p2}, Lcom/localytics/android/MarketingHandler;->_isMarketingMessageSatisfiedConditions(Lcom/localytics/android/MarketingMessage;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1672
    goto :goto_0

    .line 1676
    :cond_2
    const-string v0, "campaign_id"

    invoke-virtual {v4, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingHandler;->_hasAMPMessageBeenDisplayed(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1678
    goto :goto_0

    .line 1681
    :cond_3
    move-object v2, v4

    .line 1682
    goto :goto_0

    .line 1684
    :cond_4
    const/4 v0, 0x0

    if-eq v0, v2, :cond_5

    invoke-direct {p0, v2}, Lcom/localytics/android/MarketingHandler;->_updateDisplayingCandidate(Lcom/localytics/android/MarketingMessage;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1686
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 1689
    :cond_6
    return-object v2
.end method

.method private _saveMarketingConditions(JLjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JLjava/util/List<Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 891
    const/4 v0, 0x0

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 893
    return-void

    .line 897
    :cond_0
    move-wide v0, p1

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/MarketingHandler;->_getConditionIdFromRuleId(J)[J

    move-result-object v6

    .line 898
    move-object v7, v6

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-wide v10, v7, v9

    .line 900
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_condition_values"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "condition_id_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 898
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    const-string v2, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "rule_id_ref"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 904
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 907
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v9, v0

    .line 911
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 912
    const-string v0, "attribute_name"

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v0, "operator"

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v0, "rule_id_ref"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_conditions"

    invoke-virtual {v0, v1, v10}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 919
    const/4 v13, 0x2

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_2

    .line 921
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 922
    const-string v0, "value"

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/JsonHelper;->getSafeStringFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v0, "condition_id_ref"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 924
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_condition_values"

    invoke-virtual {v0, v1, v10}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 919
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 926
    :cond_2
    goto/16 :goto_1

    .line 927
    :cond_3
    return-void
.end method

.method private _saveMarketingMessage(Lcom/localytics/android/MarketingMessage;)I
    .locals 13

    .line 652
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_validateMarketingMessage(Lcom/localytics/android/MarketingMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x0

    return v0

    .line 658
    :cond_0
    const-string v0, "campaign_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    .line 661
    invoke-direct {p0, v7}, Lcom/localytics/android/MarketingHandler;->_hasAMPMessageBeenDisplayed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 670
    const/4 v10, 0x0

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    sget-object v2, Lcom/localytics/android/MarketingHandler;->PROJECTION_MARKETING_RULE_RECORD:[Ljava/lang/String;

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "campaign_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v10, v0

    .line 674
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 677
    const-string v0, "version"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 682
    :cond_2
    const/4 v0, 0x0

    if-eq v0, v10, :cond_4

    .line 684
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v10, :cond_3

    .line 684
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v11

    .line 689
    :cond_4
    :goto_0
    if-lez v8, :cond_6

    .line 691
    const-string v0, "Existing in-app rule already exists for this campaign\n\t campaignID = %d\n\t ruleID = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 693
    const-string v0, "version"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v11

    .line 694
    if-lt v9, v11, :cond_5

    .line 696
    const-string v0, "No update needed. Campaign version has not been updated\n\t version: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 697
    const/4 v0, 0x0

    return v0

    .line 701
    :cond_5
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_parseMarketingMessage(Lcom/localytics/android/MarketingMessage;)Landroid/content/ContentValues;

    move-result-object v12

    .line 702
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    sget-object v2, Lcom/localytics/android/MarketingHandler;->SELECTION_UPDATE_MARKETING_RULE:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 703
    goto :goto_1

    .line 707
    :cond_6
    const-string v0, "In-app campaign not found. Creating a new one."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 709
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_parseMarketingMessage(Lcom/localytics/android/MarketingMessage;)Landroid/content/ContentValues;

    move-result-object v11

    .line 710
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string v1, "marketing_rules"

    invoke-virtual {v0, v1, v11}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v8, v0

    .line 713
    :goto_1
    if-lez v8, :cond_7

    .line 716
    int-to-long v0, v8

    const-string v2, "conditions"

    invoke-static {p1, v2}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler;->_saveMarketingConditions(JLjava/util/List;)V

    .line 719
    const/4 v11, 0x0

    .line 722
    const-string v0, "display_events"

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v11, v0

    .line 726
    goto :goto_2

    .line 724
    :catch_0
    move-exception v12

    .line 727
    :goto_2
    const/4 v0, 0x0

    if-eq v0, v11, :cond_7

    .line 729
    int-to-long v0, v8

    invoke-direct {p0, v0, v1, v11}, Lcom/localytics/android/MarketingHandler;->_bindRuleToEvents(JLjava/util/List;)V

    .line 733
    :cond_7
    if-lez v8, :cond_8

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 736
    invoke-static {p1}, Lcom/localytics/android/MarketingDownloader;->getRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v11

    .line 737
    int-to-long v0, v8

    const-string v2, ".zip"

    invoke-virtual {v11, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/localytics/android/MarketingDownloader;->getLocalFileURL(JZ)Ljava/lang/String;

    move-result-object v12

    .line 738
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 740
    const-string v0, "Saving in-app message with remoteURL = %s and localUrl = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x1

    invoke-static {v11, v12, v0}, Lcom/localytics/android/MarketingDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 745
    :cond_8
    return v8
.end method

.method private _updateDisplayingCandidate(Lcom/localytics/android/MarketingMessage;)Z
    .locals 12

    .line 2027
    const/4 v4, 0x0

    .line 2028
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2029
    invoke-direct {p0}, Lcom/localytics/android/MarketingHandler;->_getZipFileDirPath()Ljava/lang/String;

    move-result-object v6

    .line 2030
    invoke-direct {p0, v5}, Lcom/localytics/android/MarketingHandler;->_getUnzipFileDirPath(I)Ljava/lang/String;

    move-result-object v7

    .line 2031
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_getRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 2034
    invoke-direct {p0, v5, v8}, Lcom/localytics/android/MarketingHandler;->_doesCreativeExist(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2037
    invoke-static {p1}, Lcom/localytics/android/MarketingDownloader;->getRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v9

    .line 2038
    int-to-long v0, v5

    invoke-static {v0, v1, v8}, Lcom/localytics/android/MarketingDownloader;->getLocalFileURL(JZ)Ljava/lang/String;

    move-result-object v10

    .line 2039
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2041
    const/4 v0, 0x1

    invoke-static {v9, v10, v0}, Lcom/localytics/android/MarketingDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 2046
    :cond_0
    if-eqz v8, :cond_1

    .line 2049
    const-string v0, "amp_rule_%d.zip"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v7, v0}, Lcom/localytics/android/MarketingHandler;->_decompressZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2057
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2060
    :cond_2
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2062
    const/4 v0, 0x0

    return v0

    .line 2070
    :cond_3
    const-string v0, "devices"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 2072
    const-string v0, "tablet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2074
    const-string v0, "tablet_size_width"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2075
    const-string v0, "tablet_size_height"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    .line 2077
    :cond_4
    const-string v0, "both"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2079
    const-string v0, "phone_size_width"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2080
    const-string v0, "phone_size_height"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    .line 2084
    :cond_5
    const-string v0, "phone_size_width"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2085
    const-string v0, "phone_size_height"

    invoke-virtual {p1, v0}, Lcom/localytics/android/MarketingMessage;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2091
    :goto_1
    const-string v0, "html_url"

    invoke-virtual {p1, v0, v4}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    const-string v0, "base_path"

    invoke-virtual {p1, v0, v7}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    const-string v0, "display_width"

    int-to-float v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    const-string v0, "display_height"

    int-to-float v1, v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/localytics/android/MarketingMessage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    const/4 v0, 0x1

    return v0
.end method

.method private _validateMarketingMessage(Lcom/localytics/android/MarketingMessage;)Z
    .locals 11

    .line 844
    const-string v0, "campaign_id"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    .line 845
    const-string v0, "rule_name"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 846
    const-string v0, "display_events"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 847
    const-string v0, "expiration"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    .line 848
    const-string v0, "location"

    invoke-static {p1, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 853
    if-eqz v4, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    int-to-long v0, v7

    cmp-long v0, v0, v9

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic access$100(Lcom/localytics/android/MarketingHandler;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/MarketingHandler;->_marketingTrigger(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_getRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/localytics/android/MarketingHandler;IZ)Z
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/MarketingHandler;->_doesCreativeExist(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)Z
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_updateDisplayingCandidate(Lcom/localytics/android/MarketingMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/localytics/android/MarketingHandler;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_getJavaScriptClientCallbacks(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/List;
    .locals 1

    .line 58
    sget-object v0, Lcom/localytics/android/MarketingHandler;->JS_STRINGS_THAT_MEAN_NULL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_destroyLocalMarketingMessage(Lcom/localytics/android/MarketingMessage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/localytics/android/MarketingHandler;->__showMarketingTest()V

    return-void
.end method

.method static synthetic access$400(Lcom/localytics/android/MarketingHandler;Landroid/content/Intent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->_handlePushReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/localytics/android/MarketingHandler;->SELECTION_DISPLAYED_MARKETING_MESSAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/localytics/android/MarketingHandler;)Lo/ˈ;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    return-object v0
.end method

.method static synthetic access$700(Lcom/localytics/android/MarketingHandler;)Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->isMidDisplayingInApp:Z

    return v0
.end method

.method static synthetic access$702(Lcom/localytics/android/MarketingHandler;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/localytics/android/MarketingHandler;->isMidDisplayingInApp:Z

    return p1
.end method

.method static synthetic access$800(Lcom/localytics/android/MarketingHandler;I)Z
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingHandler;->setMarketingMessageAsDisplayed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingRulesAdapter;)Lcom/localytics/android/MarketingRulesAdapter;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler;->testCampaignsListAdapter:Lcom/localytics/android/MarketingRulesAdapter;

    return-object p1
.end method

.method private setMarketingMessageAsDisplayed(I)Z
    .locals 1

    .line 446
    new-instance v0, Lcom/localytics/android/MarketingHandler$5;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/MarketingHandler$5;-><init>(Lcom/localytics/android/MarketingHandler;I)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .locals 0

    .line 479
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 1152
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1153
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    return-object v2
.end method

.method protected _getMaxRowToUpload()I
    .locals 1

    .line 1146
    const/4 v0, 0x1

    return v0
.end method

.method protected _init()V
    .locals 2

    .line 1165
    new-instance v0, Lcom/localytics/android/MarketingProvider;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/MarketingProvider;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 1166
    return-void
.end method

.method protected _onUploadCompleted(Ljava/lang/String;)V
    .locals 8

    .line 484
    const/4 v0, 0x0

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I

    .line 485
    :goto_0
    iget v0, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I

    if-eq v2, v0, :cond_3

    .line 490
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 491
    const-string v0, "amp"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 492
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v7, v0

    .line 495
    new-instance v0, Lcom/localytics/android/MarketingMessage;

    invoke-direct {v0, v7}, Lcom/localytics/android/MarketingMessage;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    goto :goto_1

    .line 499
    :cond_1
    invoke-direct {p0, v5}, Lcom/localytics/android/MarketingHandler;->_removeDeactivatedMarketingMessages(Ljava/util/List;)V

    .line 502
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v7, v0

    .line 504
    invoke-direct {p0, v7}, Lcom/localytics/android/MarketingHandler;->_saveMarketingMessage(Lcom/localytics/android/MarketingMessage;)I

    .line 505
    goto :goto_2

    .line 507
    :cond_2
    iput v2, p0, Lcom/localytics/android/MarketingHandler;->lastMarketingMessagesHash:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_3

    .line 509
    :catch_0
    move-exception v3

    .line 511
    const-string v0, "JSONException"

    invoke-static {v0, v3}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->testCampaignsListAdapter:Lcom/localytics/android/MarketingRulesAdapter;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_4

    .line 517
    iget-object v3, p0, Lcom/localytics/android/MarketingHandler;->testCampaignsListAdapter:Lcom/localytics/android/MarketingRulesAdapter;

    .line 518
    new-instance v0, Lcom/localytics/android/MarketingHandler$6;

    invoke-direct {v0, p0, v3}, Lcom/localytics/android/MarketingHandler$6;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingRulesAdapter;)V

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler$6;->start()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/MarketingHandler;->testCampaignsListAdapter:Lcom/localytics/android/MarketingRulesAdapter;

    .line 534
    goto :goto_4

    .line 537
    :cond_4
    const-string v0, "open"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;)V

    .line 539
    :goto_4
    return-void
.end method

.method dismissCurrentInAppMessage()V
    .locals 4

    .line 762
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 764
    return-void

    .line 768
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    const-string v1, "marketing_dialog"

    invoke-virtual {v0, v1}, Lo/ˈ;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 769
    instance-of v0, v2, Lcom/localytics/android/MarketingDialogFragment;

    if-eqz v0, :cond_1

    .line 771
    move-object v0, v2

    check-cast v0, Lcom/localytics/android/MarketingDialogFragment;

    move-object v3, v0

    .line 772
    invoke-virtual {v3}, Lcom/localytics/android/MarketingDialogFragment;->dismissCampaign()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :cond_1
    goto :goto_0

    .line 775
    :catch_0
    move-exception v2

    .line 777
    const-class v0, Ljava/lang/RuntimeException;

    const-string v1, "Localytics library threw an uncaught exception"

    invoke-static {v0, v1, v2}, Lcom/localytics/android/Localytics;->throwOrLogError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    .line 779
    :goto_0
    return-void
.end method

.method displayMarketingMessage(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Z)V"
        }
    .end annotation

    .line 750
    const-string v0, "open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xc9

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v1, v1

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/localytics/android/MarketingHandler;->queueMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 756
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/16 v1, 0xc9

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 758
    :goto_1
    return-void
.end method

.method getDialogCallbacks()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
        }
    .end annotation

    .line 1699
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1702
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$16;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$16;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$17;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$17;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$18;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$18;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/MarketingHandler$19;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$19;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    return-object v2
.end method

.method getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .locals 1

    .line 1286
    invoke-static {}, Lcom/localytics/android/MarketingDialogFragment;->getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    move-result-object v0

    return-object v0
.end method

.method getMarketingMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/localytics/android/MarketingMessage;>;"
        }
    .end annotation

    .line 1296
    new-instance v0, Lcom/localytics/android/MarketingHandler$9;

    invoke-direct {v0, p0}, Lcom/localytics/android/MarketingHandler$9;-><init>(Lcom/localytics/android/MarketingHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->getList(Ljava/util/concurrent/Callable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .line 1160
    new-instance v0, Lcom/localytics/android/MarketingDownloader;

    invoke-direct {v0, p0, p1, p2}, Lcom/localytics/android/MarketingDownloader;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V

    return-object v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .locals 7

    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 367
    :pswitch_0
    const-string v0, "In-app handler received MESSAGE_INAPP_TRIGGER"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 369
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 371
    const/4 v0, 0x0

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 373
    const/4 v0, 0x1

    aget-object v0, v4, v0

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 375
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/MarketingHandler$1;

    invoke-direct {v1, p0, v5, v6}, Lcom/localytics/android/MarketingHandler$1;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 383
    goto :goto_1

    .line 387
    :pswitch_1
    const-string v0, "In-app handler received MESSAGE_DELETE_INAPP_RESOURCES"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v4, v0

    .line 391
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/MarketingHandler$2;

    invoke-direct {v1, p0, v4}, Lcom/localytics/android/MarketingHandler$2;-><init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/MarketingMessage;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 399
    goto :goto_1

    .line 403
    :pswitch_2
    const-string v0, "In-app handler received MESSAGE_SHOW_INAPP_TEST"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 409
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/MarketingHandler;->_upload(ZLjava/lang/String;)V

    .line 410
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/localytics/android/MarketingHandler$3;

    invoke-direct {v1, p0}, Lcom/localytics/android/MarketingHandler$3;-><init>(Lcom/localytics/android/MarketingHandler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    goto :goto_1

    .line 422
    :pswitch_3
    const-string v0, "Analytics handler received MESSAGE_HANDLE_PUSH_RECEIVED"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 424
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    move-object v4, v0

    .line 426
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/MarketingHandler$4;

    invoke-direct {v1, p0, v4}, Lcom/localytics/android/MarketingHandler$4;-><init>(Lcom/localytics/android/MarketingHandler;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 434
    goto :goto_1

    .line 438
    :goto_0
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 442
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method handleNotificationReceived(Landroid/content/Intent;)V
    .locals 1

    .line 954
    const/16 v0, 0xcc

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 955
    return-void
.end method

.method handlePushNotificationOpened(Landroid/content/Intent;)V
    .locals 9

    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_4

    .line 327
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 328
    const-string v0, "ca"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    const-string v0, "cr"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 330
    const-string v0, "v"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 332
    const-string v0, "t"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const-string v7, "Alert"

    .line 338
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 340
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 341
    const-string v0, "Campaign ID"

    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "Creative ID"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "Creative Type"

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "Action"

    const-string v1, "Click"

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "Schema Version - Client"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "Schema Version - Server"

    invoke-virtual {v8, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "Localytics Push Opened"

    invoke-static {v0, v8}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 351
    :cond_3
    const-string v0, "ll"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_0

    .line 353
    :catch_0
    move-exception v3

    .line 355
    const-string v0, "Failed to get campaign id or creative id from payload"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 358
    :cond_4
    :goto_0
    return-void
.end method

.method handleTestModeIntent(Landroid/content/Intent;)V
    .locals 10

    .line 959
    const/4 v0, 0x0

    if-ne v0, p1, :cond_0

    .line 961
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 966
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 968
    :cond_1
    return-void

    .line 971
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 972
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 973
    const-string v0, "[/]"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 975
    if-eqz v6, :cond_3

    array-length v0, v6

    if-nez v0, :cond_4

    .line 977
    :cond_3
    return-void

    .line 980
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "testMode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 982
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 984
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/localytics/android/Localytics;->setTestModeEnabled(Z)V

    goto :goto_0

    .line 986
    :cond_5
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    aget-object v0, v6, v0

    const-string v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 988
    const/4 v0, 0x2

    aget-object v7, v6, v0

    .line 989
    const/4 v0, 0x3

    aget-object v8, v6, v0

    .line 990
    invoke-static {}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory()Ljava/lang/String;

    move-result-object v9

    .line 992
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 994
    new-instance v0, Lcom/localytics/android/MarketingHandler$7;

    invoke-direct {v0, p0, v7, v8, v9}, Lcom/localytics/android/MarketingHandler$7;-><init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1079
    :cond_6
    :goto_0
    return-void
.end method

.method public localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;J)V"
        }
    .end annotation

    .line 2422
    invoke-static {p1, p2}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 2423
    return-void
.end method

.method public localyticsSessionDidOpen(ZZZ)V
    .locals 3

    .line 2390
    if-nez p3, :cond_0

    .line 2392
    invoke-static {}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->upload(Ljava/lang/String;)V

    .line 2395
    :cond_0
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2397
    if-eqz p1, :cond_1

    .line 2399
    const-string v0, "AMP First Run"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;)V

    .line 2401
    :cond_1
    if-eqz p2, :cond_2

    .line 2403
    const-string v0, "AMP upgrade"

    invoke-static {v0}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;)V

    .line 2405
    :cond_2
    if-nez p3, :cond_3

    .line 2407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/MarketingHandler;->sessionStartMarketingMessageShown:Z

    .line 2408
    const-string v0, "open"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/localytics/android/Localytics;->triggerInAppMessage(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 2411
    :cond_3
    return-void
.end method

.method public localyticsSessionWillClose()V
    .locals 0

    .line 2417
    return-void
.end method

.method public localyticsSessionWillOpen(ZZZ)V
    .locals 0

    .line 2385
    return-void
.end method

.method setDismissButtonImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2378
    invoke-static {p1}, Lcom/localytics/android/MarketingDialogFragment;->setDismissButtonImage(Landroid/graphics/Bitmap;)V

    .line 2379
    return-void
.end method

.method setFragmentManager(Lo/ˈ;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler;->mFragmentManager:Lo/ˈ;

    .line 176
    return-void
.end method

.method setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .locals 0

    .line 1291
    invoke-static {p1}, Lcom/localytics/android/MarketingDialogFragment;->setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V

    .line 1292
    return-void
.end method

.method showMarketingTest()V
    .locals 2

    .line 2373
    invoke-static {}, Lcom/localytics/android/Localytics;->getCustomerIdInMemory()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/MarketingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/MarketingHandler;->queueMessage(Landroid/os/Message;)Z

    .line 2374
    return-void
.end method
